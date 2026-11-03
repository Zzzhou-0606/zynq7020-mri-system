/********************************************************************************
** Form generated from reading UI file 'board_dashboard.ui'
**
** Created by: Qt User Interface Compiler version 5.15.16
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BOARD_DASHBOARD_H
#define UI_BOARD_DASHBOARD_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "address_edit.hpp"

QT_BEGIN_NAMESPACE

class Ui_BoardDashboard
{
public:
    QVBoxLayout *outer;
    QWidget *header;
    QHBoxLayout *headerLayout;
    QLabel *brandMark;
    QWidget *brand;
    QVBoxLayout *brandLayout;
    QLabel *title;
    QLabel *subtitle;
    QSpacerItem *headerSpace;
    QLabel *ipBadge;
    QLabel *temperature;
    QTabWidget *tabs;
    QWidget *mriPage;
    QVBoxLayout *mriLayout;
    QWidget *caseRow;
    QHBoxLayout *caseLayout;
    QLabel *caseLabel;
    QLabel *taskBadge;
    QFrame *imageCard;
    QHBoxLayout *imageLayout;
    QWidget *panel0;
    QVBoxLayout *panelLayout0;
    QLabel *caption0;
    QLabel *preview0;
    QWidget *panel1;
    QVBoxLayout *panelLayout1;
    QLabel *caption1;
    QLabel *preview1;
    QWidget *panel2;
    QVBoxLayout *panelLayout2;
    QLabel *caption2;
    QLabel *preview2;
    QFrame *progressCard;
    QVBoxLayout *progressLayout;
    QWidget *progressRow;
    QHBoxLayout *progressRowLayout;
    QLabel *progressDetail;
    QLabel *progressPercent;
    QProgressBar *progress;
    QFrame *resultCard;
    QHBoxLayout *resultLayout;
    QWidget *resultText;
    QVBoxLayout *resultTextLayout;
    QLabel *resultCaption;
    QLabel *summary;
    QWidget *scoreBlock;
    QVBoxLayout *scoreLayout;
    QLabel *score;
    QLabel *scoreCaption;
    QWidget *statusPage;
    QGridLayout *statusLayout;
    QLabel *statusCaption0;
    QLabel *system;
    QLabel *statusCaption1;
    QLabel *uptime;
    QLabel *statusCaption2;
    QLabel *memory;
    QLabel *statusCaption3;
    QLabel *link;
    QLabel *statusCaption4;
    QLabel *address;
    QLabel *statusCaption5;
    QLabel *gateway;
    QLabel *statusCaption6;
    QLabel *mac;
    QWidget *settingsPage;
    QGridLayout *settingsLayout;
    QLabel *networkCaption0;
    QComboBox *mode;
    QLabel *networkCaption1;
    AddressEdit *ipInput;
    QLabel *networkCaption2;
    AddressEdit *maskInput;
    QLabel *networkCaption3;
    AddressEdit *gatewayInput;
    QPushButton *apply;
    QLabel *networkNote;
    QWidget *toolsPage;
    QVBoxLayout *toolsLayout;
    QHBoxLayout *toolsCards;
    QFrame *pairCard;
    QVBoxLayout *pairLayout;
    QLabel *pairTitle;
    QLabel *pairHint;
    QLabel *pairCode;
    QLabel *pairStatus;
    QPushButton *pairButton;
    QFrame *usbCard;
    QVBoxLayout *usbLayout;
    QLabel *usbTitle;
    QLabel *usbCase;
    QComboBox *usbDevices;
    QLabel *usbStatus;
    QHBoxLayout *usbActions;
    QPushButton *usbRefresh;
    QPushButton *usbExport;
    QFrame *clockCard;
    QHBoxLayout *clockLayout;
    QLabel *systemClock;
    QLabel *rtcStatus;
    QLabel *result;

    void setupUi(QWidget *BoardDashboard)
    {
        if (BoardDashboard->objectName().isEmpty())
            BoardDashboard->setObjectName(QString::fromUtf8("BoardDashboard"));
        BoardDashboard->resize(800, 480);
        outer = new QVBoxLayout(BoardDashboard);
        outer->setSpacing(8);
        outer->setObjectName(QString::fromUtf8("outer"));
        outer->setContentsMargins(12, 12, 12, 12);
        header = new QWidget(BoardDashboard);
        header->setObjectName(QString::fromUtf8("header"));
        header->setMinimumSize(QSize(0, 46));
        header->setMaximumSize(QSize(16777215, 46));
        headerLayout = new QHBoxLayout(header);
        headerLayout->setSpacing(10);
        headerLayout->setObjectName(QString::fromUtf8("headerLayout"));
        headerLayout->setContentsMargins(0, 0, 0, 0);
        brandMark = new QLabel(header);
        brandMark->setObjectName(QString::fromUtf8("brandMark"));
        brandMark->setMinimumSize(QSize(42, 42));
        brandMark->setMaximumSize(QSize(42, 42));
        brandMark->setAlignment(Qt::AlignCenter);

        headerLayout->addWidget(brandMark);

        brand = new QWidget(header);
        brand->setObjectName(QString::fromUtf8("brand"));
        brandLayout = new QVBoxLayout(brand);
        brandLayout->setSpacing(0);
        brandLayout->setObjectName(QString::fromUtf8("brandLayout"));
        brandLayout->setContentsMargins(0, 0, 0, 0);
        title = new QLabel(brand);
        title->setObjectName(QString::fromUtf8("title"));

        brandLayout->addWidget(title);

        subtitle = new QLabel(brand);
        subtitle->setObjectName(QString::fromUtf8("subtitle"));

        brandLayout->addWidget(subtitle);


        headerLayout->addWidget(brand);

        headerSpace = new QSpacerItem(20, 10, QSizePolicy::Expanding, QSizePolicy::Minimum);

        headerLayout->addItem(headerSpace);

        ipBadge = new QLabel(header);
        ipBadge->setObjectName(QString::fromUtf8("ipBadge"));

        headerLayout->addWidget(ipBadge);

        temperature = new QLabel(header);
        temperature->setObjectName(QString::fromUtf8("temperature"));

        headerLayout->addWidget(temperature);


        outer->addWidget(header);

        tabs = new QTabWidget(BoardDashboard);
        tabs->setObjectName(QString::fromUtf8("tabs"));
        mriPage = new QWidget();
        mriPage->setObjectName(QString::fromUtf8("mriPage"));
        mriLayout = new QVBoxLayout(mriPage);
        mriLayout->setSpacing(8);
        mriLayout->setObjectName(QString::fromUtf8("mriLayout"));
        mriLayout->setContentsMargins(0, 8, 0, 0);
        caseRow = new QWidget(mriPage);
        caseRow->setObjectName(QString::fromUtf8("caseRow"));
        caseRow->setMinimumSize(QSize(0, 24));
        caseRow->setMaximumSize(QSize(16777215, 24));
        caseLayout = new QHBoxLayout(caseRow);
        caseLayout->setSpacing(8);
        caseLayout->setObjectName(QString::fromUtf8("caseLayout"));
        caseLayout->setContentsMargins(0, 0, 0, 0);
        caseLabel = new QLabel(caseRow);
        caseLabel->setObjectName(QString::fromUtf8("caseLabel"));
        caseLabel->setMaximumSize(QSize(600, 24));
        QSizePolicy sizePolicy(QSizePolicy::Ignored, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(1);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(caseLabel->sizePolicy().hasHeightForWidth());
        caseLabel->setSizePolicy(sizePolicy);

        caseLayout->addWidget(caseLabel);

        taskBadge = new QLabel(caseRow);
        taskBadge->setObjectName(QString::fromUtf8("taskBadge"));
        taskBadge->setAlignment(Qt::AlignCenter);

        caseLayout->addWidget(taskBadge);


        mriLayout->addWidget(caseRow);

        imageCard = new QFrame(mriPage);
        imageCard->setObjectName(QString::fromUtf8("imageCard"));
        imageCard->setMinimumSize(QSize(0, 170));
        imageCard->setMaximumSize(QSize(16777215, 170));
        imageLayout = new QHBoxLayout(imageCard);
        imageLayout->setSpacing(8);
        imageLayout->setObjectName(QString::fromUtf8("imageLayout"));
        imageLayout->setContentsMargins(8, 8, 8, 8);
        panel0 = new QWidget(imageCard);
        panel0->setObjectName(QString::fromUtf8("panel0"));
        panelLayout0 = new QVBoxLayout(panel0);
        panelLayout0->setSpacing(5);
        panelLayout0->setObjectName(QString::fromUtf8("panelLayout0"));
        panelLayout0->setContentsMargins(0, 0, 0, 0);
        caption0 = new QLabel(panel0);
        caption0->setObjectName(QString::fromUtf8("caption0"));
        caption0->setMinimumSize(QSize(0, 14));
        caption0->setMaximumSize(QSize(16777215, 14));

        panelLayout0->addWidget(caption0);

        preview0 = new QLabel(panel0);
        preview0->setObjectName(QString::fromUtf8("preview0"));
        preview0->setMinimumSize(QSize(0, 132));
        preview0->setMaximumSize(QSize(16777215, 132));
        preview0->setAlignment(Qt::AlignCenter);

        panelLayout0->addWidget(preview0);


        imageLayout->addWidget(panel0);

        panel1 = new QWidget(imageCard);
        panel1->setObjectName(QString::fromUtf8("panel1"));
        panelLayout1 = new QVBoxLayout(panel1);
        panelLayout1->setSpacing(5);
        panelLayout1->setObjectName(QString::fromUtf8("panelLayout1"));
        panelLayout1->setContentsMargins(0, 0, 0, 0);
        caption1 = new QLabel(panel1);
        caption1->setObjectName(QString::fromUtf8("caption1"));
        caption1->setMinimumSize(QSize(0, 14));
        caption1->setMaximumSize(QSize(16777215, 14));

        panelLayout1->addWidget(caption1);

        preview1 = new QLabel(panel1);
        preview1->setObjectName(QString::fromUtf8("preview1"));
        preview1->setMinimumSize(QSize(0, 132));
        preview1->setMaximumSize(QSize(16777215, 132));
        preview1->setAlignment(Qt::AlignCenter);

        panelLayout1->addWidget(preview1);


        imageLayout->addWidget(panel1);

        panel2 = new QWidget(imageCard);
        panel2->setObjectName(QString::fromUtf8("panel2"));
        panelLayout2 = new QVBoxLayout(panel2);
        panelLayout2->setSpacing(5);
        panelLayout2->setObjectName(QString::fromUtf8("panelLayout2"));
        panelLayout2->setContentsMargins(0, 0, 0, 0);
        caption2 = new QLabel(panel2);
        caption2->setObjectName(QString::fromUtf8("caption2"));
        caption2->setMinimumSize(QSize(0, 14));
        caption2->setMaximumSize(QSize(16777215, 14));

        panelLayout2->addWidget(caption2);

        preview2 = new QLabel(panel2);
        preview2->setObjectName(QString::fromUtf8("preview2"));
        preview2->setMinimumSize(QSize(0, 132));
        preview2->setMaximumSize(QSize(16777215, 132));
        preview2->setAlignment(Qt::AlignCenter);

        panelLayout2->addWidget(preview2);


        imageLayout->addWidget(panel2);


        mriLayout->addWidget(imageCard);

        progressCard = new QFrame(mriPage);
        progressCard->setObjectName(QString::fromUtf8("progressCard"));
        progressCard->setMinimumSize(QSize(0, 50));
        progressCard->setMaximumSize(QSize(16777215, 50));
        progressLayout = new QVBoxLayout(progressCard);
        progressLayout->setSpacing(6);
        progressLayout->setObjectName(QString::fromUtf8("progressLayout"));
        progressLayout->setContentsMargins(10, 10, 10, 10);
        progressRow = new QWidget(progressCard);
        progressRow->setObjectName(QString::fromUtf8("progressRow"));
        progressRowLayout = new QHBoxLayout(progressRow);
        progressRowLayout->setSpacing(0);
        progressRowLayout->setObjectName(QString::fromUtf8("progressRowLayout"));
        progressRowLayout->setContentsMargins(0, 0, 0, 0);
        progressDetail = new QLabel(progressRow);
        progressDetail->setObjectName(QString::fromUtf8("progressDetail"));

        progressRowLayout->addWidget(progressDetail);

        progressPercent = new QLabel(progressRow);
        progressPercent->setObjectName(QString::fromUtf8("progressPercent"));
        progressPercent->setAlignment(Qt::AlignRight);

        progressRowLayout->addWidget(progressPercent);


        progressLayout->addWidget(progressRow);

        progress = new QProgressBar(progressCard);
        progress->setObjectName(QString::fromUtf8("progress"));
        progress->setMinimum(0);
        progress->setMaximum(1000);
        progress->setValue(0);
        progress->setTextVisible(false);
        progress->setMinimumSize(QSize(0, 6));
        progress->setMaximumSize(QSize(16777215, 6));

        progressLayout->addWidget(progress);


        mriLayout->addWidget(progressCard);

        resultCard = new QFrame(mriPage);
        resultCard->setObjectName(QString::fromUtf8("resultCard"));
        resultCard->setMinimumSize(QSize(0, 65));
        resultCard->setMaximumSize(QSize(16777215, 65));
        resultLayout = new QHBoxLayout(resultCard);
        resultLayout->setSpacing(12);
        resultLayout->setObjectName(QString::fromUtf8("resultLayout"));
        resultLayout->setContentsMargins(10, 10, 10, 10);
        resultText = new QWidget(resultCard);
        resultText->setObjectName(QString::fromUtf8("resultText"));
        resultTextLayout = new QVBoxLayout(resultText);
        resultTextLayout->setSpacing(3);
        resultTextLayout->setObjectName(QString::fromUtf8("resultTextLayout"));
        resultTextLayout->setContentsMargins(0, 0, 0, 0);
        resultCaption = new QLabel(resultText);
        resultCaption->setObjectName(QString::fromUtf8("resultCaption"));

        resultTextLayout->addWidget(resultCaption);

        summary = new QLabel(resultText);
        summary->setObjectName(QString::fromUtf8("summary"));
        summary->setWordWrap(true);
        summary->setMaximumSize(QSize(610, 38));

        resultTextLayout->addWidget(summary);


        resultLayout->addWidget(resultText);

        scoreBlock = new QWidget(resultCard);
        scoreBlock->setObjectName(QString::fromUtf8("scoreBlock"));
        scoreBlock->setMinimumSize(QSize(86, 0));
        scoreBlock->setMaximumSize(QSize(86, 16777215));
        scoreLayout = new QVBoxLayout(scoreBlock);
        scoreLayout->setSpacing(0);
        scoreLayout->setObjectName(QString::fromUtf8("scoreLayout"));
        scoreLayout->setContentsMargins(0, 0, 0, 0);
        score = new QLabel(scoreBlock);
        score->setObjectName(QString::fromUtf8("score"));
        score->setAlignment(Qt::AlignRight);

        scoreLayout->addWidget(score);

        scoreCaption = new QLabel(scoreBlock);
        scoreCaption->setObjectName(QString::fromUtf8("scoreCaption"));
        scoreCaption->setAlignment(Qt::AlignRight);

        scoreLayout->addWidget(scoreCaption);


        resultLayout->addWidget(scoreBlock);


        mriLayout->addWidget(resultCard);

        tabs->addTab(mriPage, QString());
        statusPage = new QWidget();
        statusPage->setObjectName(QString::fromUtf8("statusPage"));
        statusLayout = new QGridLayout(statusPage);
        statusLayout->setSpacing(14);
        statusLayout->setObjectName(QString::fromUtf8("statusLayout"));
        statusLayout->setContentsMargins(16, 16, 16, 16);
        statusCaption0 = new QLabel(statusPage);
        statusCaption0->setObjectName(QString::fromUtf8("statusCaption0"));

        statusLayout->addWidget(statusCaption0, 0, 0, 1, 1);

        system = new QLabel(statusPage);
        system->setObjectName(QString::fromUtf8("system"));

        statusLayout->addWidget(system, 0, 1, 1, 1);

        statusCaption1 = new QLabel(statusPage);
        statusCaption1->setObjectName(QString::fromUtf8("statusCaption1"));

        statusLayout->addWidget(statusCaption1, 1, 0, 1, 1);

        uptime = new QLabel(statusPage);
        uptime->setObjectName(QString::fromUtf8("uptime"));

        statusLayout->addWidget(uptime, 1, 1, 1, 1);

        statusCaption2 = new QLabel(statusPage);
        statusCaption2->setObjectName(QString::fromUtf8("statusCaption2"));

        statusLayout->addWidget(statusCaption2, 2, 0, 1, 1);

        memory = new QLabel(statusPage);
        memory->setObjectName(QString::fromUtf8("memory"));

        statusLayout->addWidget(memory, 2, 1, 1, 1);

        statusCaption3 = new QLabel(statusPage);
        statusCaption3->setObjectName(QString::fromUtf8("statusCaption3"));

        statusLayout->addWidget(statusCaption3, 3, 0, 1, 1);

        link = new QLabel(statusPage);
        link->setObjectName(QString::fromUtf8("link"));

        statusLayout->addWidget(link, 3, 1, 1, 1);

        statusCaption4 = new QLabel(statusPage);
        statusCaption4->setObjectName(QString::fromUtf8("statusCaption4"));

        statusLayout->addWidget(statusCaption4, 4, 0, 1, 1);

        address = new QLabel(statusPage);
        address->setObjectName(QString::fromUtf8("address"));

        statusLayout->addWidget(address, 4, 1, 1, 1);

        statusCaption5 = new QLabel(statusPage);
        statusCaption5->setObjectName(QString::fromUtf8("statusCaption5"));

        statusLayout->addWidget(statusCaption5, 5, 0, 1, 1);

        gateway = new QLabel(statusPage);
        gateway->setObjectName(QString::fromUtf8("gateway"));

        statusLayout->addWidget(gateway, 5, 1, 1, 1);

        statusCaption6 = new QLabel(statusPage);
        statusCaption6->setObjectName(QString::fromUtf8("statusCaption6"));

        statusLayout->addWidget(statusCaption6, 6, 0, 1, 1);

        mac = new QLabel(statusPage);
        mac->setObjectName(QString::fromUtf8("mac"));

        statusLayout->addWidget(mac, 6, 1, 1, 1);

        tabs->addTab(statusPage, QString());
        settingsPage = new QWidget();
        settingsPage->setObjectName(QString::fromUtf8("settingsPage"));
        settingsLayout = new QGridLayout(settingsPage);
        settingsLayout->setSpacing(10);
        settingsLayout->setObjectName(QString::fromUtf8("settingsLayout"));
        settingsLayout->setContentsMargins(16, 16, 16, 16);
        networkCaption0 = new QLabel(settingsPage);
        networkCaption0->setObjectName(QString::fromUtf8("networkCaption0"));

        settingsLayout->addWidget(networkCaption0, 0, 0, 1, 1);

        mode = new QComboBox(settingsPage);
        mode->addItem(QString());
        mode->addItem(QString());
        mode->setObjectName(QString::fromUtf8("mode"));

        settingsLayout->addWidget(mode, 0, 1, 1, 1);

        networkCaption1 = new QLabel(settingsPage);
        networkCaption1->setObjectName(QString::fromUtf8("networkCaption1"));

        settingsLayout->addWidget(networkCaption1, 1, 0, 1, 1);

        ipInput = new AddressEdit(settingsPage);
        ipInput->setObjectName(QString::fromUtf8("ipInput"));
        ipInput->setEnabled(false);
        ipInput->setMaxLength(15);

        settingsLayout->addWidget(ipInput, 1, 1, 1, 1);

        networkCaption2 = new QLabel(settingsPage);
        networkCaption2->setObjectName(QString::fromUtf8("networkCaption2"));

        settingsLayout->addWidget(networkCaption2, 2, 0, 1, 1);

        maskInput = new AddressEdit(settingsPage);
        maskInput->setObjectName(QString::fromUtf8("maskInput"));
        maskInput->setEnabled(false);
        maskInput->setMaxLength(15);

        settingsLayout->addWidget(maskInput, 2, 1, 1, 1);

        networkCaption3 = new QLabel(settingsPage);
        networkCaption3->setObjectName(QString::fromUtf8("networkCaption3"));

        settingsLayout->addWidget(networkCaption3, 3, 0, 1, 1);

        gatewayInput = new AddressEdit(settingsPage);
        gatewayInput->setObjectName(QString::fromUtf8("gatewayInput"));
        gatewayInput->setEnabled(false);
        gatewayInput->setMaxLength(15);

        settingsLayout->addWidget(gatewayInput, 3, 1, 1, 1);

        apply = new QPushButton(settingsPage);
        apply->setObjectName(QString::fromUtf8("apply"));

        settingsLayout->addWidget(apply, 4, 1, 1, 1);

        networkNote = new QLabel(settingsPage);
        networkNote->setObjectName(QString::fromUtf8("networkNote"));
        networkNote->setWordWrap(true);

        settingsLayout->addWidget(networkNote, 5, 0, 1, 2);

        tabs->addTab(settingsPage, QString());
        toolsPage = new QWidget();
        toolsPage->setObjectName(QString::fromUtf8("toolsPage"));
        toolsLayout = new QVBoxLayout(toolsPage);
        toolsLayout->setSpacing(10);
        toolsLayout->setObjectName(QString::fromUtf8("toolsLayout"));
        toolsLayout->setContentsMargins(0, 4, 0, 0);
        toolsCards = new QHBoxLayout();
        toolsCards->setSpacing(10);
        toolsCards->setObjectName(QString::fromUtf8("toolsCards"));
        pairCard = new QFrame(toolsPage);
        pairCard->setObjectName(QString::fromUtf8("pairCard"));
        pairLayout = new QVBoxLayout(pairCard);
        pairLayout->setSpacing(8);
        pairLayout->setObjectName(QString::fromUtf8("pairLayout"));
        pairLayout->setContentsMargins(14, 14, 14, 14);
        pairTitle = new QLabel(pairCard);
        pairTitle->setObjectName(QString::fromUtf8("pairTitle"));

        pairLayout->addWidget(pairTitle);

        pairHint = new QLabel(pairCard);
        pairHint->setObjectName(QString::fromUtf8("pairHint"));
        pairHint->setWordWrap(true);

        pairLayout->addWidget(pairHint);

        pairCode = new QLabel(pairCard);
        pairCode->setObjectName(QString::fromUtf8("pairCode"));
        pairCode->setAlignment(Qt::AlignCenter);
        pairCode->setMinimumSize(QSize(0, 58));

        pairLayout->addWidget(pairCode);

        pairStatus = new QLabel(pairCard);
        pairStatus->setObjectName(QString::fromUtf8("pairStatus"));
        pairStatus->setWordWrap(true);
        pairStatus->setMinimumSize(QSize(0, 40));

        pairLayout->addWidget(pairStatus);

        pairButton = new QPushButton(pairCard);
        pairButton->setObjectName(QString::fromUtf8("pairButton"));

        pairLayout->addWidget(pairButton);


        toolsCards->addWidget(pairCard);

        usbCard = new QFrame(toolsPage);
        usbCard->setObjectName(QString::fromUtf8("usbCard"));
        usbLayout = new QVBoxLayout(usbCard);
        usbLayout->setSpacing(8);
        usbLayout->setObjectName(QString::fromUtf8("usbLayout"));
        usbLayout->setContentsMargins(14, 14, 14, 14);
        usbTitle = new QLabel(usbCard);
        usbTitle->setObjectName(QString::fromUtf8("usbTitle"));

        usbLayout->addWidget(usbTitle);

        usbCase = new QLabel(usbCard);
        usbCase->setObjectName(QString::fromUtf8("usbCase"));
        usbCase->setMinimumSize(QSize(0, 22));

        usbLayout->addWidget(usbCase);

        usbDevices = new QComboBox(usbCard);
        usbDevices->addItem(QString());
        usbDevices->setObjectName(QString::fromUtf8("usbDevices"));

        usbLayout->addWidget(usbDevices);

        usbStatus = new QLabel(usbCard);
        usbStatus->setObjectName(QString::fromUtf8("usbStatus"));
        usbStatus->setWordWrap(true);
        usbStatus->setMinimumSize(QSize(0, 58));
        usbStatus->setMaximumSize(QSize(16777215, 58));

        usbLayout->addWidget(usbStatus);

        usbActions = new QHBoxLayout();
        usbActions->setObjectName(QString::fromUtf8("usbActions"));
        usbRefresh = new QPushButton(usbCard);
        usbRefresh->setObjectName(QString::fromUtf8("usbRefresh"));

        usbActions->addWidget(usbRefresh);

        usbExport = new QPushButton(usbCard);
        usbExport->setObjectName(QString::fromUtf8("usbExport"));
        usbExport->setEnabled(false);

        usbActions->addWidget(usbExport);


        usbLayout->addLayout(usbActions);


        toolsCards->addWidget(usbCard);

        toolsCards->setStretch(0, 2);
        toolsCards->setStretch(1, 3);

        toolsLayout->addLayout(toolsCards);

        clockCard = new QFrame(toolsPage);
        clockCard->setObjectName(QString::fromUtf8("clockCard"));
        clockLayout = new QHBoxLayout(clockCard);
        clockLayout->setObjectName(QString::fromUtf8("clockLayout"));
        clockLayout->setContentsMargins(14, -1, 14, -1);
        systemClock = new QLabel(clockCard);
        systemClock->setObjectName(QString::fromUtf8("systemClock"));

        clockLayout->addWidget(systemClock);

        rtcStatus = new QLabel(clockCard);
        rtcStatus->setObjectName(QString::fromUtf8("rtcStatus"));
        rtcStatus->setAlignment(Qt::AlignRight|Qt::AlignVCenter);

        clockLayout->addWidget(rtcStatus);


        toolsLayout->addWidget(clockCard);

        tabs->addTab(toolsPage, QString());

        outer->addWidget(tabs);

        result = new QLabel(BoardDashboard);
        result->setObjectName(QString::fromUtf8("result"));
        result->setMinimumSize(QSize(0, 18));
        result->setMaximumSize(QSize(16777215, 18));
        result->setWordWrap(false);

        outer->addWidget(result);


        retranslateUi(BoardDashboard);

        tabs->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(BoardDashboard);
    } // setupUi

    void retranslateUi(QWidget *BoardDashboard)
    {
        BoardDashboard->setWindowTitle(QCoreApplication::translate("BoardDashboard", "MRI Station", nullptr));
        BoardDashboard->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QWidget {font-family: \"DejaVu Sans\"; font-size:14px; color:#26344b; background:transparent;}\n"
"QWidget#BoardDashboard {background:#f3f6fb;}\n"
"QLabel {background:transparent; border:0;}\n"
"QFrame#imageCard, QFrame#progressCard, QFrame#resultCard {background:white; border:1px solid #e5eaf2; border-radius:12px;}\n"
"QTabWidget::pane {border:0; background:transparent;}\n"
"QTabBar::tab {min-height:24px; padding:8px 22px; margin-right:6px; border:0; border-radius:8px; color:#738199; background:transparent;}\n"
"QTabBar::tab:selected {background:#2864e9; color:white;}\n"
"QTabBar::tab:!selected:hover {background:#e8eef9;}\n"
"QLineEdit,QComboBox {min-height:36px; border:1px solid #dce3ee; border-radius:8px; padding:0 10px; background:white;}\n"
"QLineEdit:disabled {background:#edf1f7; color:#9aa7ba;}\n"
"QComboBox::drop-down {width:32px; border:0;}\n"
"QComboBox QAbstractItemView {min-height:40px; background:white; selection-background-color:#2864e9;}\n"
"QPushButton {min-height:40px; border:1px solid #dce3ee"
                        "; border-radius:8px; background:white; padding:0 16px;}\n"
"QPushButton:pressed {background:#e8effc;}\n"
"QPushButton#apply {background:#2864e9; color:white; border:0;}\n"
"QPushButton:disabled {color:#9aa7ba; background:#edf1f7;}\n"
"QProgressBar {border:0; border-radius:3px; background:#edf1f7;}\n"
"QProgressBar::chunk {background:#2864e9; border-radius:3px;}\n"
"QDialog {background:#f3f6fb;}", nullptr));
        brandMark->setText(QCoreApplication::translate("BoardDashboard", "M", nullptr));
        brandMark->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#2864e9; color:white; border-radius:11px; font-size:25px; font-weight:bold;", nullptr));
        title->setText(QCoreApplication::translate("BoardDashboard", "MRI STATION", nullptr));
        title->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:20px; font-weight:bold; letter-spacing:1px;", nullptr));
        subtitle->setText(QCoreApplication::translate("BoardDashboard", "BRAIN IMAGING  /  ZYNQ-7020", nullptr));
        subtitle->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:10px; color:#738199;", nullptr));
        ipBadge->setText(QCoreApplication::translate("BoardDashboard", "IP unavailable", nullptr));
        ipBadge->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#e9eff8; color:#526784; border-radius:7px; padding:8px; font-size:12px;", nullptr));
        temperature->setText(QCoreApplication::translate("BoardDashboard", "TEMP  --", nullptr));
        temperature->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#e8f6f1; color:#16816c; border-radius:7px; padding:8px; font-size:12px;", nullptr));
        caseLabel->setText(QCoreApplication::translate("BoardDashboard", "Waiting for a case", nullptr));
        caseLabel->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:16px; font-weight:bold;", nullptr));
        taskBadge->setText(QCoreApplication::translate("BoardDashboard", "READY", nullptr));
        taskBadge->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#2864e9; background:#edf3ff; border-radius:5px; padding:4px 9px; font-size:11px;", nullptr));
        caption0->setText(QCoreApplication::translate("BoardDashboard", "KEY VIEW 1", nullptr));
        caption0->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:10px; color:#738199; letter-spacing:1px;", nullptr));
        preview0->setText(QCoreApplication::translate("BoardDashboard", "Awaiting image", nullptr));
        preview0->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#101926; border-radius:8px; color:#94a5bd; font-size:12px;", nullptr));
        caption1->setText(QCoreApplication::translate("BoardDashboard", "KEY VIEW 2", nullptr));
        caption1->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:10px; color:#738199; letter-spacing:1px;", nullptr));
        preview1->setText(QCoreApplication::translate("BoardDashboard", "Awaiting image", nullptr));
        preview1->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#101926; border-radius:8px; color:#94a5bd; font-size:12px;", nullptr));
        caption2->setText(QCoreApplication::translate("BoardDashboard", "KEY VIEW 3", nullptr));
        caption2->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:10px; color:#738199; letter-spacing:1px;", nullptr));
        preview2->setText(QCoreApplication::translate("BoardDashboard", "Awaiting image", nullptr));
        preview2->setStyleSheet(QCoreApplication::translate("BoardDashboard", "background:#101926; border-radius:8px; color:#94a5bd; font-size:12px;", nullptr));
        progressDetail->setText(QCoreApplication::translate("BoardDashboard", "Awaiting analysis", nullptr));
        progressDetail->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#526784;", nullptr));
        progressPercent->setText(QCoreApplication::translate("BoardDashboard", "0.0%", nullptr));
        progressPercent->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#2864e9; font-weight:bold;", nullptr));
        resultCaption->setText(QCoreApplication::translate("BoardDashboard", "MODEL RESULT", nullptr));
        resultCaption->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:10px; color:#738199; letter-spacing:1px;", nullptr));
        summary->setText(QCoreApplication::translate("BoardDashboard", "Waiting for analysis", nullptr));
        summary->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:13px; color:#24467c;", nullptr));
        score->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        score->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:25px; font-weight:bold; color:#2864e9;", nullptr));
        scoreCaption->setText(QCoreApplication::translate("BoardDashboard", "SCORE / 100", nullptr));
        scoreCaption->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:9px; color:#738199;", nullptr));
        tabs->setTabText(tabs->indexOf(mriPage), QCoreApplication::translate("BoardDashboard", "Analysis", nullptr));
        statusCaption0->setText(QCoreApplication::translate("BoardDashboard", "System", nullptr));
        statusCaption0->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        system->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        system->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption1->setText(QCoreApplication::translate("BoardDashboard", "Uptime", nullptr));
        statusCaption1->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        uptime->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        uptime->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption2->setText(QCoreApplication::translate("BoardDashboard", "Available / total memory", nullptr));
        statusCaption2->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        memory->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        memory->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption3->setText(QCoreApplication::translate("BoardDashboard", "Ethernet connection", nullptr));
        statusCaption3->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        link->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        link->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption4->setText(QCoreApplication::translate("BoardDashboard", "IPv4 / netmask", nullptr));
        statusCaption4->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        address->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        address->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption5->setText(QCoreApplication::translate("BoardDashboard", "Gateway", nullptr));
        statusCaption5->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        gateway->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        gateway->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        statusCaption6->setText(QCoreApplication::translate("BoardDashboard", "MAC address", nullptr));
        statusCaption6->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199; font-size:13px;", nullptr));
        mac->setText(QCoreApplication::translate("BoardDashboard", "--", nullptr));
        mac->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:14px;", nullptr));
        tabs->setTabText(tabs->indexOf(statusPage), QCoreApplication::translate("BoardDashboard", "Device", nullptr));
        networkCaption0->setText(QCoreApplication::translate("BoardDashboard", "Address mode", nullptr));
        networkCaption0->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199;", nullptr));
        mode->setItemText(0, QCoreApplication::translate("BoardDashboard", "DHCP", nullptr));
        mode->setItemText(1, QCoreApplication::translate("BoardDashboard", "Static IPv4", nullptr));

        networkCaption1->setText(QCoreApplication::translate("BoardDashboard", "IPv4 address", nullptr));
        networkCaption1->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199;", nullptr));
        ipInput->setPlaceholderText(QCoreApplication::translate("BoardDashboard", "192.168.1.50", nullptr));
        networkCaption2->setText(QCoreApplication::translate("BoardDashboard", "Netmask", nullptr));
        networkCaption2->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199;", nullptr));
        maskInput->setText(QCoreApplication::translate("BoardDashboard", "255.255.255.0", nullptr));
        maskInput->setPlaceholderText(QString());
        networkCaption3->setText(QCoreApplication::translate("BoardDashboard", "Gateway", nullptr));
        networkCaption3->setStyleSheet(QCoreApplication::translate("BoardDashboard", "color:#738199;", nullptr));
        gatewayInput->setPlaceholderText(QCoreApplication::translate("BoardDashboard", "Optional on a direct PC connection", nullptr));
        apply->setText(QCoreApplication::translate("BoardDashboard", "Apply network settings", nullptr));
        networkNote->setText(QCoreApplication::translate("BoardDashboard", "Changes apply until reboot. Changing the IP disconnects existing sessions.", nullptr));
        networkNote->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#738199;", nullptr));
        tabs->setTabText(tabs->indexOf(settingsPage), QCoreApplication::translate("BoardDashboard", "Network", nullptr));
        pairCard->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QFrame#pairCard {background:white; border:1px solid #e5eaf2; border-radius:12px;}", nullptr));
        pairTitle->setText(QCoreApplication::translate("BoardDashboard", "DOCTOR PAIRING", nullptr));
        pairTitle->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; font-weight:bold; color:#657893;", nullptr));
        pairHint->setText(QCoreApplication::translate("BoardDashboard", "Connect a computer with a one-time code.", nullptr));
        pairHint->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#738199;", nullptr));
        pairCode->setText(QCoreApplication::translate("BoardDashboard", "------", nullptr));
        pairCode->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:38px; font-weight:bold; color:#2864e9;", nullptr));
        pairStatus->setText(QCoreApplication::translate("BoardDashboard", "No active code. Generate one below.", nullptr));
        pairStatus->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#738199;", nullptr));
        pairButton->setText(QCoreApplication::translate("BoardDashboard", "Generate pairing code", nullptr));
        pairButton->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QPushButton {background:#2864e9; color:white; border:0;} QPushButton:disabled {background:#edf1f7; color:#9aa7ba;}", nullptr));
        usbCard->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QFrame#usbCard {background:white; border:1px solid #e5eaf2; border-radius:12px;}", nullptr));
        usbTitle->setText(QCoreApplication::translate("BoardDashboard", "USB EXPORT", nullptr));
        usbTitle->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; font-weight:bold; color:#657893;", nullptr));
        usbCase->setText(QCoreApplication::translate("BoardDashboard", "Waiting for a completed case", nullptr));
        usbCase->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:13px; font-weight:bold;", nullptr));
        usbDevices->setItemText(0, QCoreApplication::translate("BoardDashboard", "No USB storage detected", nullptr));

        usbStatus->setText(QCoreApplication::translate("BoardDashboard", "Insert mounted USB storage to export the current completed case.", nullptr));
        usbStatus->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#738199;", nullptr));
        usbRefresh->setText(QCoreApplication::translate("BoardDashboard", "Refresh", nullptr));
        usbExport->setText(QCoreApplication::translate("BoardDashboard", "Export current case", nullptr));
        usbExport->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QPushButton {background:#2864e9; color:white; border:0;} QPushButton:disabled {background:#edf1f7; color:#9aa7ba;}", nullptr));
        clockCard->setStyleSheet(QCoreApplication::translate("BoardDashboard", "QFrame#clockCard {background:white; border:1px solid #e5eaf2; border-radius:12px;}", nullptr));
        systemClock->setText(QCoreApplication::translate("BoardDashboard", "---- -- --   --:--:--", nullptr));
        systemClock->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:19px; font-weight:bold;", nullptr));
        rtcStatus->setText(QCoreApplication::translate("BoardDashboard", "RTC status unavailable", nullptr));
        rtcStatus->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:12px; color:#738199;", nullptr));
        tabs->setTabText(tabs->indexOf(toolsPage), QCoreApplication::translate("BoardDashboard", "Tools", nullptr));
        result->setText(QCoreApplication::translate("BoardDashboard", "Case management and detailed review are available on the computer.", nullptr));
        result->setStyleSheet(QCoreApplication::translate("BoardDashboard", "font-size:11px; color:#8290a5;", nullptr));
    } // retranslateUi

};

namespace Ui {
    class BoardDashboard: public Ui_BoardDashboard {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BOARD_DASHBOARD_H
