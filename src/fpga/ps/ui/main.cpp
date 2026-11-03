#include <QApplication>
#include <QComboBox>
#include <QDateTime>
#include <QDir>
#include <QElapsedTimer>
#include <QDialog>
#include <QDialogButtonBox>
#include <QGridLayout>
#include <QMouseEvent>
#include <QFormLayout>
#include <QFile>
#include <QFileInfo>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>
#include <QLabel>
#include <QLineEdit>
#include <QMessageBox>
#include <QProcess>
#include <QPushButton>
#include <QProgressBar>
#include <QPixmap>
#include <QTabWidget>
#include <QTimer>
#include <QVBoxLayout>
#include <QWidget>
#include <cmath>

#include "ui_board_dashboard.h"

// No shell command interpolation; a local helper validates all network inputs.
int main(int argc, char **argv) {
    QApplication app(argc, argv);
    QWidget window;
    Ui::BoardDashboard ui;
    ui.setupUi(&window);
    window.setFixedSize(800, 480);
    auto *temperature=ui.temperature;
    auto *ipBadge=ui.ipBadge;
    auto *caseLabel=ui.caseLabel;
    auto *taskBadge=ui.taskBadge;
    auto *progress=ui.progress;
    auto *progressDetail=ui.progressDetail;
    auto *progressPercent=ui.progressPercent;
    auto *summary=ui.summary;
    auto *score=ui.score;
    auto *system=ui.system;
    auto *uptime=ui.uptime;
    auto *memory=ui.memory;
    auto *link=ui.link;
    auto *address=ui.address;
    auto *gateway=ui.gateway;
    auto *mac=ui.mac;
    auto *mode=ui.mode;
    auto *ipInput=ui.ipInput;
    auto *maskInput=ui.maskInput;
    auto *gatewayInput=ui.gatewayInput;
    auto *apply=ui.apply;
    auto *result=ui.result;
    QList<QLabel *> previews={ui.preview0,ui.preview1,ui.preview2};
    for (auto *field : {ipInput, maskInput, gatewayInput}) {
        field->setMaxLength(15);
        field->setInputMethodHints(Qt::ImhFormattedNumbersOnly);
    }
    QProcess reader, writer;
    const QString helper = QDir(QCoreApplication::applicationDirPath()).filePath("network_backend.py");
    auto refresh = [&]() {
        if (reader.state() == QProcess::NotRunning && writer.state() == QProcess::NotRunning)
            reader.start("/usr/bin/python3", {helper, "status"});
    };
    QObject::connect(&reader, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
                     [&](int, QProcess::ExitStatus) {
        auto object = QJsonDocument::fromJson(reader.readAllStandardOutput()).object();
        if (!object.value("ok").toBool()) {
            system->setText("Status unavailable");
            temperature->setText("TEMP  --");
            ipBadge->setText("IP unavailable");
            return;
        }
        auto s = object.value("result").toObject();
        const auto sensor = s.value("chip_temperature").toObject();
        const double celsius = sensor.value("celsius").toDouble();
        temperature->setText(sensor.value("available").toBool() && sensor.value("celsius").isDouble() && std::isfinite(celsius)
                             ? QString("TEMP  %1 C").arg(celsius, 0, 'f', 1) : "TEMP  --");
        system->setText("Linux " + s.value("kernel").toString() + " / Qt " + qVersion());
        int seconds = s.value("uptime_seconds").toInt();
        uptime->setText(QString("%1 h %2 m %3 s").arg(seconds / 3600).arg(seconds / 60 % 60).arg(seconds % 60));
        auto m = s.value("memory_mib").toObject();
        memory->setText(QString("%1 / %2 MiB").arg(m.value("MemAvailable").toInt()).arg(m.value("MemTotal").toInt()));
        link->setText(s.value("carrier").toString() == "1" ? "LINK UP" : "LINK DOWN / cable disconnected");
        ipBadge->setText(s.value("address").toString().isEmpty() ? "IP unavailable" : s.value("address").toString());
        address->setText(s.value("address").toString("--") + " / " + s.value("netmask").toString("--"));
        gateway->setText(s.value("gateway").toString());
        mac->setText(s.value("mac").toString());
    });
    QObject::connect(&reader, &QProcess::errorOccurred, [&](QProcess::ProcessError) {
        system->setText("Cannot run status helper");
        temperature->setText("TEMP  --");
            ipBadge->setText("IP unavailable");
    });
    QObject::connect(mode, QOverload<int>::of(&QComboBox::currentIndexChanged), [&](int index) {
        for (auto *field : {ipInput, maskInput, gatewayInput}) field->setEnabled(index == 1);
    });
    QObject::connect(apply, &QPushButton::clicked, [&]() {
        if (QMessageBox::question(&window, "Apply network settings",
            "Change eth0 for this boot? Existing connections may be interrupted.") != QMessageBox::Yes) return;
        QJsonObject config;
        config["mode"] = mode->currentIndex() == 0 ? "dhcp" : "static";
        config["address"] = ipInput->text();
        config["netmask"] = maskInput->text();
        config["gateway"] = gatewayInput->text();
        apply->setEnabled(false);
        mode->setEnabled(false);
        result->setText("Applying settings... The interface remains responsive.");
        writer.start("/usr/bin/python3", {helper, "apply"});
        writer.write(QJsonDocument(config).toJson(QJsonDocument::Compact));
        writer.closeWriteChannel();
    });
    QObject::connect(&writer, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
                     [&](int, QProcess::ExitStatus) {
        auto object = QJsonDocument::fromJson(writer.readAllStandardOutput()).object();
        result->setText(object.value("ok").toBool()
            ? object.value("result").toObject().value("message").toString()
            : "Failed: " + object.value("error").toString("Helper returned no valid result"));
        apply->setEnabled(true);
        mode->setEnabled(true);
        refresh();
    });
    QObject::connect(&writer, &QProcess::errorOccurred, [&](QProcess::ProcessError) {
        result->setText("Cannot run network helper: " + writer.errorString());
        apply->setEnabled(true);
        mode->setEnabled(true);
    });
    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, refresh);
    timer.start(2000);
    const QString statusPath = qEnvironmentVariable("MRI_STATUS", "/mnt/mri-data/tasks/current.json");
    QProcess pairWriter, usbReader, usbWriter;
    QElapsedTimer pairFileAge, pairRequestAge;
    QByteArray lastPairFile;
    QString previousPairCode, exportTask, exportCase;
    bool pairingRequested = false;
    auto readCurrent = [&]() -> QJsonObject {
        QFile file(statusPath);
        if (!file.open(QIODevice::ReadOnly)) return QJsonObject();
        return QJsonDocument::fromJson(file.readAll()).object();
    };
    auto updateExportButton = [&]() {
        const auto current = readCurrent();
        const bool complete = current.value("status").toString() == "complete"
                && current.value("classification").toObject().value("status").toString() == "complete"
                && !current.value("task_id").toString().isEmpty();
        const bool busy = usbWriter.state() != QProcess::NotRunning;
        ui.usbExport->setEnabled(!busy && complete && !ui.usbDevices->currentData().toString().isEmpty());
        const QString label = busy ? "Exporting case " + exportCase
                                  : complete ? "Case " + current.value("case_id").toString() : "Waiting for a completed case";
        ui.usbCase->setText(ui.usbCase->fontMetrics().elidedText(label, Qt::ElideRight, ui.usbCase->width()));
        ui.usbCase->setToolTip(label);
    };
    auto refreshUSB = [&]() {
        if (usbReader.state() == QProcess::NotRunning && usbWriter.state() == QProcess::NotRunning)
            usbReader.start("/usr/bin/python3", {"/opt/mri/bin/usb_export.py", "status"});
    };
    QObject::connect(ui.usbDevices, QOverload<int>::of(&QComboBox::currentIndexChanged), [&](int) { updateExportButton(); });
    QObject::connect(ui.usbRefresh, &QPushButton::clicked, refreshUSB);
    QObject::connect(&usbReader, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
                     [&](int exitCode, QProcess::ExitStatus exitStatus) {
        const auto response = QJsonDocument::fromJson(usbReader.readAllStandardOutput()).object();
        const QString selected = ui.usbDevices->currentData().toString();
        ui.usbDevices->clear();
        if (exitCode == 0 && exitStatus == QProcess::NormalExit && response.value("ok").toBool()) {
            for (const auto value : response.value("result").toObject().value("devices").toArray()) {
                const auto device = value.toObject();
                const QString mount = device.value("mount").toString();
                if (mount.isEmpty()) continue;
                ui.usbDevices->addItem(device.value("device").toString() + "  " + mount, mount);
            }
        } else {
            ui.usbStatus->setText("USB status unavailable. Check the storage helper.");
        }
        if (ui.usbDevices->count() == 0) ui.usbDevices->addItem("No mounted USB storage", QString());
        const int previous = ui.usbDevices->findData(selected);
        if (previous >= 0) ui.usbDevices->setCurrentIndex(previous);
        updateExportButton();
    });
    QObject::connect(&usbReader, &QProcess::errorOccurred, [&](QProcess::ProcessError) {
        ui.usbDevices->clear();
        ui.usbDevices->addItem("USB status unavailable", QString());
        ui.usbStatus->setText("Cannot run USB status helper.");
        updateExportButton();
    });
    QObject::connect(ui.usbExport, &QPushButton::clicked, [&]() {
        const auto current = readCurrent();
        const QString mount = ui.usbDevices->currentData().toString();
        if (usbWriter.state() != QProcess::NotRunning || mount.isEmpty()
                || current.value("status").toString() != "complete"
                || current.value("classification").toObject().value("status").toString() != "complete") return;
        exportTask = current.value("task_id").toString();
        exportCase = current.value("case_id").toString();
        if (exportTask.isEmpty()) return;
        ui.usbExport->setEnabled(false);
        ui.usbRefresh->setEnabled(false);
        ui.usbDevices->setEnabled(false);
        ui.usbStatus->setText("Writing report and images. Keep USB storage connected.");
        usbWriter.start("/usr/bin/python3", {"/opt/mri/bin/usb_export.py", "export", "--mount", mount, "--task-id", exportTask});
        updateExportButton();
    });
    QObject::connect(&usbWriter, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
                     [&](int exitCode, QProcess::ExitStatus exitStatus) {
        const auto response = QJsonDocument::fromJson(usbWriter.readAllStandardOutput()).object();
        if (exitCode == 0 && exitStatus == QProcess::NormalExit && response.value("ok").toBool()) {
            const auto detail = response.value("result").toObject();
            const QString path = detail.value("path").toString();
            const QString shown = ui.usbStatus->fontMetrics().elidedText(path, Qt::ElideMiddle, ui.usbStatus->width());
            ui.usbStatus->setText((detail.value("full_images").toBool() ? "Export complete: report and full images.\n" : "Export complete: report and key images.\n") + shown);
            ui.usbStatus->setToolTip(path + "\n" + detail.value("message").toString());
        } else {
            const QString message = response.value("error").toString("USB export failed. Check storage and try again.");
            ui.usbStatus->setText("Export failed: " + message.left(100));
            ui.usbStatus->setToolTip(message);
        }
        ui.usbRefresh->setEnabled(true);
        ui.usbDevices->setEnabled(true);
        updateExportButton();
        refreshUSB();
    });
    QObject::connect(&usbWriter, &QProcess::errorOccurred, [&](QProcess::ProcessError) {
        ui.usbStatus->setText("Cannot run USB export helper.");
        ui.usbRefresh->setEnabled(true);
        ui.usbDevices->setEnabled(true);
        updateExportButton();
    });
    QObject::connect(ui.pairButton, &QPushButton::clicked, [&]() {
        if (pairWriter.state() != QProcess::NotRunning) return;
        previousPairCode = ui.pairCode->text();
        pairingRequested = true;
        pairRequestAge.start();
        ui.pairCode->setText("------");
        ui.pairStatus->setText("Requesting a new pairing code...");
        ui.pairButton->setEnabled(false);
        pairWriter.start("/usr/bin/python3", {"/opt/mri/service/patient_portal.py", "request-pairing"});
    });
    QObject::connect(&pairWriter, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
                     [&](int exitCode, QProcess::ExitStatus exitStatus) {
        ui.pairButton->setEnabled(true);
        if (exitCode != 0 || exitStatus != QProcess::NormalExit) {
            pairingRequested = false;
            ui.pairCode->setText("------");
            ui.pairStatus->setText("Pairing request failed. Check the board service.");
        }
    });
    QObject::connect(&pairWriter, &QProcess::errorOccurred, [&](QProcess::ProcessError) {
        pairingRequested = false;
        ui.pairButton->setEnabled(true);
        ui.pairCode->setText("------");
        ui.pairStatus->setText("Cannot run the local pairing helper.");
    });
    int toolsTicks = 0;
    auto refreshTools = [&]() {
        ui.systemClock->setText(QDateTime::currentDateTime().toString("yyyy-MM-dd  HH:mm:ss"));
        QFile rtcFile("/run/mri-rtc.json");
        if (rtcFile.open(QIODevice::ReadOnly)) {
            const auto rtc = QJsonDocument::fromJson(rtcFile.readAll()).object();
            ui.rtcStatus->setText(rtc.value("available").toBool()
                ? !rtc.value("error").toString().isEmpty() ? "RTC error"
                  : rtc.value("restored").toBool() ? "RTC restored" : rtc.value("updated").toBool() ? "RTC synced" : "RTC available"
                : "RTC unavailable");
            ui.rtcStatus->setToolTip(rtc.value("error").toString());
        } else ui.rtcStatus->setText("RTC not checked");
        QFile pairFile("/run/mri-pairing.json");
        if (pairFile.open(QIODevice::ReadOnly)) {
            const QByteArray bytes = pairFile.readAll();
            if (bytes != lastPairFile || !pairFileAge.isValid()) { lastPairFile = bytes; pairFileAge.start(); }
            const auto state = QJsonDocument::fromJson(bytes).object();
            const QString code = state.value("pairing_code").toString();
            const QString status = state.value("state").toString();
            const int remaining = qMax(0, state.value("expires_in").toInt() - int(pairFileAge.elapsed() / 1000));
            const bool active = status == "active" && remaining > 0 && code.size() == 6;
            if (pairingRequested && active && code != previousPairCode) pairingRequested = false;
            if (pairingRequested && pairRequestAge.elapsed() < 10000) {
                ui.pairCode->setText("------");
                ui.pairStatus->setText("Waiting for the board service...");
            } else if (pairingRequested) {
                pairingRequested = false;
                ui.pairCode->setText("------");
                ui.pairStatus->setText("No new code received. Try again.");
            } else if (active) {
                ui.pairCode->setText(code);
                ui.pairStatus->setText(QString("Expires in %1:%2  |  %3 attempts left").arg(remaining/60).arg(remaining%60,2,10,QChar('0')).arg(state.value("remaining_attempts").toInt()));
            } else {
                ui.pairCode->setText("------");
                ui.pairStatus->setText(status == "used" ? "Computer paired. Generate a new code if needed."
                    : status == "locked" ? "Too many attempts. Generate a new code."
                    : status == "expired" || (status == "active" && !remaining) ? "Code expired. Generate a new code."
                    : "No active code. Generate one below.");
            }
        } else {
            ui.pairCode->setText("------");
            ui.pairStatus->setText("Pairing status unavailable.");
        }
        updateExportButton();
        if (++toolsTicks % 5 == 0) refreshUSB();
    };
    QTimer toolsTimer;
    QObject::connect(&toolsTimer, &QTimer::timeout, refreshTools);
    toolsTimer.start(1000);
    QString displayedTask;
    QStringList displayedPaths = QStringList({QString(), QString(), QString()});
    auto refreshMRI = [&]() {
        QFile file(statusPath);
        if (!file.open(QIODevice::ReadOnly)) {
            caseLabel->setText("MRI service unavailable");
            progress->setValue(0);
            progressDetail->setText("Awaiting analysis");progressPercent->setText("0.0%");score->setText("--");taskBadge->setText("READY");
            summary->setText("No live task status. Check the board service.");
            for (auto *preview : previews) { preview->clear(); preview->setText("No current image"); }
            displayedPaths = QStringList({QString(), QString(), QString()});
            return;
        }
        QJsonParseError parseError;
        const auto document = QJsonDocument::fromJson(file.readAll(), &parseError);
        if (parseError.error != QJsonParseError::NoError || !document.isObject()) return;
        const auto state = document.object();
        const QString task = state.value("task_id").toString();
        if (task != displayedTask) {
            displayedTask = task;
            displayedPaths = QStringList({QString(), QString(), QString()});
            for (auto *preview : previews) { preview->clear(); preview->setText("Awaiting preview"); }
        }
        if (task.isEmpty()) {
            caseLabel->setText("Waiting for a computer to submit a case");
            summary->setText("Ready for analysis. Backend: " + state.value("execution_backend").toString("unavailable"));
            progress->setValue(0);
            progressDetail->setText("Awaiting analysis");progressPercent->setText("0.0%");score->setText("--");taskBadge->setText("READY");
            return;
        }
        const QString caseText=QString("Case %1   /   %2").arg(state.value("case_id").toString()).arg(state.value("scan_id").toString());
        caseLabel->setText(caseLabel->fontMetrics().elidedText(caseText,Qt::ElideRight,caseLabel->width()));
        caseLabel->setToolTip(caseText);
        taskBadge->setText(state.value("status").toString().toUpper());
        const auto p = state.value("progress").toObject();
        // QJsonValue::toInt defaults to zero for nonintegral JSON numbers.
        const double suppliedPercent = p.value("percent").toDouble();
        const double percent = std::isfinite(suppliedPercent) ? qBound(0.0, suppliedPercent, 100.0) : 0.0;
        progress->setValue(qRound(percent * 10.0));
        const QString counts = p.contains("completed") && p.contains("total")
                ? QString(" %1/%2").arg(p.value("completed").toInt()).arg(p.value("total").toInt()) : QString();
        const QString stage=p.value("stage").toString();
        const QString stageName=stage=="infer_a"?"Axial slices":stage=="infer_b"?"Coronal slices":stage=="infer_c"?"Sagittal slices":stage=="complete"?"Analysis complete":stage;
        progressDetail->setText(stageName + counts);
        progressPercent->setText(QString("%1%").arg(percent,0,'f',1));
        const auto classification = state.value("classification").toObject();
        const auto segmentation = state.value("segmentation").toObject();
        score->setText("--");
        QString text = "Classification: " + classification.value("status").toString()
                     + " | Segmentation: " + segmentation.value("status").toString();
        if (classification.value("status").toString() == "complete") {
            const auto r = classification.value("result").toObject();
            score->setText(QString::number(r.value("score").toDouble(),'f',1));
            const QStringList classes = {"No dementia", "Very mild", "Mild or above"};
            const int category = r.value("class_id").toInt(-1);
            const bool incomplete = r.value("severity_status").toString() == "incomplete";
            text = (incomplete ? "Stage 2 incomplete" : (category >= 0 && category < classes.size() ? classes[category] : "Invalid class"))

                 + "  |  " + r.value("execution_backend").toString()
                 + (incomplete ? "\n" + r.value("severity_error").toString().left(90)
                               : "\nBrain segmentation: " + segmentation.value("status").toString());
        } else if (classification.value("status").toString() == "failed") {
            text += "\n" + classification.value("error").toString().left(100);
        }
        summary->setText(text);
        const auto paths = state.value("previews").toObject();
        const QString taskFolder = QDir(QFileInfo(statusPath).absolutePath()).filePath(task);
        for (int i = 0; i < previews.size(); ++i) {
            const QString path = paths.value(QString::number(i)).toString();
            if (path == displayedPaths[i] || path.isEmpty()) continue;
            // Accept only the service's current-task image files, never stale case paths.
            if (QFileInfo(path).absolutePath() != taskFolder) continue;
            QPixmap image(path);
            if (!image.isNull()) {
                previews[i]->setPixmap(image.scaled(previews[i]->size(), Qt::KeepAspectRatio, Qt::SmoothTransformation));
                displayedPaths[i] = path;
            }
        }
    };
    QTimer mriTimer;
    QObject::connect(&mriTimer, &QTimer::timeout, refreshMRI);
    mriTimer.start(500);
    window.showFullScreen();
    refresh();
    refreshMRI();
    refreshTools();
    refreshUSB();
    return app.exec();
}

