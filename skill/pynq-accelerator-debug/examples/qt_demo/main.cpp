#include <QApplication>
#include <QComboBox>
#include <QDialog>
#include <QElapsedTimer>
#include <QFile>
#include <QGridLayout>
#include <QHeaderView>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QTableWidget>
#include <QTcpSocket>
#include <QTimer>
#include <QVBoxLayout>
#include <QDir>

int main(int argc, char **argv) {
    QApplication app(argc, argv);
    const QStringList args = app.arguments();
    const bool selfTest = args.contains("--self-test");
    QString capture;
    int ci = args.indexOf("--capture");
    if (ci >= 0 && ci+1 < args.size()) capture = args[ci+1];
    if (!capture.isEmpty()) QDir().mkpath(capture);
    QWidget window;
    window.setWindowTitle("PYNQ | FIFO + Affine");
    window.resize(800, 480);
    window.setStyleSheet(
        "QWidget{background:#101a2c;color:#e9eff9;font-family:DejaVu Sans;font-size:14px;}"
        "QPushButton,QComboBox{background:#23344f;border:1px solid #456080;border-radius:6px;padding:10px;}"
        "QPushButton:pressed{background:#3f638c;}QPushButton:disabled{color:#76869c;background:#18263c;}"
        "QPushButton#run{background:#236ddd;font-weight:bold;}"
        "QHeaderView::section{background:#23344f;padding:4px;border:0;}"
        "QTableWidget{background:#152238;gridline-color:#2b3e5a;border:0;}"
        "QLineEdit{background:#23344f;padding:8px;font-size:22px;}"
        "QComboBox QAbstractItemView{selection-background-color:#236ddd;min-height:100px;}");
    QVBoxLayout layout(&window);
    layout.setContentsMargins(20, 12, 20, 12);
    layout.setSpacing(8);
    QLabel title("PYNQ accelerator | FIFO + Affine");
    title.setStyleSheet("font-size:22px;font-weight:bold;");
    QLabel status("Connecting to local PL service...");
    status.setMinimumHeight(20);
    layout.addWidget(&title);
    layout.addWidget(&status);
    QHBoxLayout controls;
    QComboBox path;
    path.addItem("FIFO loopback", "fifo");
    path.addItem("Affine: 3x + 7", "affine");
    path.setMinimumHeight(46);
    int n = 100;
    QPushButton length("100 elements");
    QPushButton run("Run");
    run.setObjectName("run");
    run.setMinimumSize(120, 46);
    run.setEnabled(false);
    controls.addWidget(&path, 2);
    controls.addWidget(&length, 1);
    controls.addWidget(&run, 1);
    layout.addLayout(&controls);
    QTableWidget table(8, 4);
    table.setHorizontalHeaderLabels({"Index", "Input", "Expected", "PL output"});
    table.verticalHeader()->hide();
    table.horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
    table.horizontalHeader()->setSectionResizeMode(0, QHeaderView::Fixed);
    table.setColumnWidth(0, 58);
    table.verticalHeader()->setDefaultSectionSize(25);
    table.setEditTriggers(QAbstractItemView::NoEditTriggers);
    table.setSelectionMode(QAbstractItemView::NoSelection);
    for (int r=0;r<8;++r) for(int c=0;c<4;++c) {
        auto item = new QTableWidgetItem(c ? "-" : QString::number(r));
        item->setTextAlignment(Qt::AlignCenter);
        table.setItem(r,c,item);
    }
    layout.addWidget(&table, 1);
    QLabel timing("DMA call: -- ms   |   Click to result: -- ms");
    QLabel detail("uint32 | 1-4095 elements | First 8 values shown");
    detail.setStyleSheet("color:#a8b9d3;font-size:12px;");
    layout.addWidget(&timing);
    layout.addWidget(&detail);

    QTcpSocket socket;
    QTimer poll, heartbeat, reconnect, testTimer;
    QByteArray received;
    bool pending=false, connected=false;
    QString currentTask, shownTask;
    QElapsedTimer clickTimer;
    int ticks=0, submitCount=0, testStage=0;
    bool duplicateBlocked=false;
    QJsonArray testResults;
    auto send = [&](const QJsonObject &request) {
        socket.write(QJsonDocument(request).toJson(QJsonDocument::Compact)+"\n");
    };
    auto setBusy = [&](bool busy) {
        pending=busy;
        run.setEnabled(connected && !busy);
        path.setEnabled(!busy);
        length.setEnabled(!busy);
    };
    QObject::connect(&length, &QPushButton::clicked, [&]() {
        QDialog keypad(&window);
        keypad.setWindowTitle("Input length: 1-4095");
        keypad.setFixedSize(320, 390);
        QVBoxLayout box(&keypad);
        QLineEdit value(QString::number(n));
        value.setReadOnly(true);
        box.addWidget(&value);
        QGridLayout grid;
        QStringList keys={"1","2","3","4","5","6","7","8","9","Clear","0","Back"};
        bool fresh=true;
        for(int i=0;i<keys.size();++i) {
            auto button=new QPushButton(keys[i],&keypad);
            button->setMinimumHeight(48);
            grid.addWidget(button,i/3,i%3);
            QObject::connect(button,&QPushButton::clicked,[&,i]() {
                QString s=value.text();
                if(keys[i]=="Clear") s.clear();
                else if(keys[i]=="Back") s.chop(1);
                else {if(fresh) s.clear(); if(s.size()<4) s+=keys[i];}
                fresh=false;value.setText(s);
            });
        }
        box.addLayout(&grid);
        QLabel hint("Enter 1 to 4095 elements");
        QPushButton ok("Apply"), cancel("Cancel");
        QHBoxLayout actions;actions.addWidget(&cancel);actions.addWidget(&ok);
        box.addWidget(&hint);box.addLayout(&actions);
        QObject::connect(&cancel,&QPushButton::clicked,&keypad,&QDialog::reject);
        QObject::connect(&ok,&QPushButton::clicked,[&]() {
            int v=value.text().toInt();
            if(v<1 || v>4095) {hint.setText("Length must be 1-4095");return;}
            n=v;length.setText(QString::number(n)+" elements");keypad.accept();
        });
        keypad.exec();
    });
    QObject::connect(&run,&QPushButton::clicked,[&]() {
        if(pending || !connected) return;
        setBusy(true);clickTimer.start();++submitCount;
        status.setText("RUNNING | PL computing...");
        send({{"op","run"},{"path",path.currentData().toString()},{"n",n}});
    });
    QObject::connect(&socket,&QTcpSocket::connected,[&]() {
        connected=true;status.setText("Connected | Reading hardware state...");
        send({{"op","status"}});
    });
    QObject::connect(&socket,&QTcpSocket::disconnected,[&]() {
        connected=false;run.setEnabled(false);
        status.setText("Disconnected | Reconnecting; submitted task stays on service");
    });
    QObject::connect(&socket,&QTcpSocket::readyRead,[&]() {
        received+=socket.readAll();
        int end;
        while((end=received.indexOf('\n'))>=0) {
            auto data=QJsonDocument::fromJson(received.left(end)).object();received.remove(0,end+1);
            if(data.contains("accepted")) {currentTask=data["accepted"].toString();continue;}
            if(data.contains("error") && !data.contains("state")) {
                status.setText("Request: "+data["error"].toString());continue;
            }
            QString state=data["state"].toString();
            if(state=="running") {setBusy(true);status.setText("RUNNING | PL computing...");}
            else if(state=="ready") {setBusy(false);status.setText("READY | Real PL backend");}
            else if(state=="fault") {
                setBusy(true);status.setText("FAULT | "+data["error"].toString());
            } else if(state=="complete") {
                setBusy(false);
                QString id=data["task_id"].toString();
                if(id==shownTask) continue;
                shownTask=id;
                bool pass=data["status"].toString()=="pass";
                status.setText(QString(pass?"PASS":"MISMATCH")+" | "+data["path"].toString()+
                    " | "+QString::number(data["n"].toInt())+" elements | Task "+id);
                status.setStyleSheet(pass?"color:#61d8a2;":"color:#ff9f80;");
                QString keys[]={"input_head","expected_head","output_head"};
                for(int c=0;c<3;++c) {
                    auto values=data[keys[c]].toArray();
                    for(int r=0;r<8;++r) table.item(r,c+1)->setText(r<values.size()?
                        QString::number(static_cast<quint64>(values[r].toDouble())):"-");
                }
                QString elapsed=(id==currentTask && clickTimer.isValid())?
                    QString::number(clickTimer.elapsed()):"restored";
                timing.setText("DMA call: "+QString::number(data["transfer_wall_ms"].toDouble(),'f',3)+
                    " ms   |   Click to result: "+elapsed+" ms");
                detail.setText("Received "+QString::number(data["received_bytes"].toInt())+
                    " bytes | First 8 values | Full vectors and JSON saved");
                if(selfTest && id==currentTask) testResults.append(data);
                if(!capture.isEmpty()) window.grab().save(capture+"/qt_"+data["path"].toString()+".png");
            }
        }
    });
    QObject::connect(&poll,&QTimer::timeout,[&]() {if(connected) send({{"op","status"}});});
    QObject::connect(&heartbeat,&QTimer::timeout,[&]() {++ticks;});
    QObject::connect(&reconnect,&QTimer::timeout,[&]() {
        if(socket.state()==QAbstractSocket::UnconnectedState) socket.connectToHost("127.0.0.1",8766);
    });
    poll.start(150);heartbeat.start(25);reconnect.start(1000);
    if(selfTest) {
        QObject::connect(&testTimer,&QTimer::timeout,[&]() {
            if(testStage==0 && run.isEnabled()) {
                path.setCurrentIndex(0);n=100;length.setText("100 elements");run.click();
                duplicateBlocked=!run.isEnabled();run.click();testStage=1;
            } else if(testStage==1 && testResults.size()==1 && run.isEnabled()) {
                path.setCurrentIndex(1);n=4095;length.setText("4095 elements");run.click();testStage=2;
            } else if(testStage==2 && testResults.size()==2 && run.isEnabled()) {
                QJsonObject result{{"duplicate_blocked",duplicateBlocked},{"submissions",submitCount},
                    {"ui_timer_ticks",ticks},{"button_restored",run.isEnabled()},{"results",testResults}};
                QFile file(capture+"/qt_selftest.json");file.open(QIODevice::WriteOnly);
                file.write(QJsonDocument(result).toJson());file.close();app.quit();
            }
        });
        testTimer.start(200);
        QTimer::singleShot(30000,&app,[&]() {app.exit(2);});
    }
    window.show();
    socket.connectToHost("127.0.0.1",8766);
    return app.exec();
}
