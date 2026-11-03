#pragma once
#include <QLineEdit>
#include <QDialog>
#include <QMouseEvent>
#include <QDialogButtonBox>
#include <QGridLayout>
#include <QVBoxLayout>
#include <QLabel>
#include <QPushButton>
// A local keypad avoids adding Qt Virtual Keyboard or a desktop input method.
class AddressEdit : public QLineEdit {
public:
    explicit AddressEdit(QWidget *parent = nullptr) : QLineEdit(parent) {}
protected:
    void mousePressEvent(QMouseEvent *event) override {
        QLineEdit::mousePressEvent(event);
        if (event->button() != Qt::LeftButton || !isEnabled()) return;
        QDialog dialog(window());
        dialog.setWindowTitle("IPv4 numeric keypad");
        dialog.setFixedSize(430, 410);
        auto *layout = new QVBoxLayout(&dialog);
        layout->addWidget(new QLabel("Enter address (digits and dots)"));
        auto *entry = new QLineEdit(text());
        entry->setMaxLength(15);
        entry->setMinimumHeight(40);
        layout->addWidget(entry);
        auto *grid = new QGridLayout;
        const QStringList keys = {"1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "0", "Back"};
        for (int i = 0; i < keys.size(); ++i) {
            const QString key = keys[i];
            auto *button = new QPushButton(key);
            button->setMinimumHeight(48);
            button->setFocusPolicy(Qt::NoFocus);
            grid->addWidget(button, i / 3, i % 3);
            QObject::connect(button, &QPushButton::clicked, [entry, key]() {
                if (key == "Back") entry->backspace(); else entry->insert(key);
            });
        }
        layout->addLayout(grid);
        auto *clear = new QPushButton("Clear");
        layout->addWidget(clear);
        QObject::connect(clear, &QPushButton::clicked, entry, &QLineEdit::clear);
        auto *buttons = new QDialogButtonBox(QDialogButtonBox::Ok | QDialogButtonBox::Cancel);
        layout->addWidget(buttons);
        QObject::connect(buttons, &QDialogButtonBox::accepted, &dialog, &QDialog::accept);
        QObject::connect(buttons, &QDialogButtonBox::rejected, &dialog, &QDialog::reject);
        entry->setFocus();
        entry->selectAll();
        if (dialog.exec() == QDialog::Accepted) setText(entry->text());
    }
};

