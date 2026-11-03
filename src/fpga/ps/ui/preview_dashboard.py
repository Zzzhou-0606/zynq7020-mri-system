"""Render the production Designer layout with synthetic state, not ARM callbacks."""
import argparse
import json
import os
from pathlib import Path
import sys
import types

parser = argparse.ArgumentParser()
parser.add_argument('--qt-bin', required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
dll_path = os.add_dll_directory(args.qt_bin)
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
os.environ['QT_QPA_PLATFORM_PLUGIN_PATH'] = str(Path(args.qt_bin).parent/'plugins/platforms')
os.environ['QT_QPA_FONTDIR'] = str(Path(os.environ.get('WINDIR','C:/Windows'))/'Fonts')
from PyQt5 import uic
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QFont, QFontDatabase
from PyQt5.QtWidgets import QApplication, QLineEdit

custom = types.ModuleType('address_edit')
custom.AddressEdit = QLineEdit
sys.modules['address_edit'] = custom
sys.modules['address_edit.hpp'] = custom
app = QApplication([])
font_id = QFontDatabase.addApplicationFont(str(Path(os.environ.get('WINDIR','C:/Windows'))/'Fonts/arial.ttf'))
if font_id >= 0:
    QFont.insertSubstitution('DejaVu Sans',QFontDatabase.applicationFontFamilies(font_id)[0])
window = uic.loadUi(str(Path(__file__).with_name('board_dashboard.ui')))
window.setFixedSize(800,480)
window.caseLabel.setText('Case SYNTHETIC-001   /   Scan 01')
window.taskBadge.setText('RUNNING')
window.ipBadge.setText('192.168.1.50')
window.temperature.setText('TEMP  48.6 C')
window.progress.setValue(267)
window.progressPercent.setText('26.7%')
window.progressDetail.setText('Coronal slices 1/38')
window.summary.setText('Classification: running  |  Segmentation: pending')
window.result.setText('Synthetic preview: production layout, fixture values; no board measurement.')
window.pairCode.setText('012345')
window.pairStatus.setText('Expires in 4:15  |  5 attempts left')
window.usbCase.setText('Case SYNTHETIC-001')
window.usbDevices.clear()
window.usbDevices.addItem('/dev/sda1   /media/usb', '/media/usb')
window.usbStatus.setText('Ready to export the completed case.\nReport and full image slices are available.')
window.usbExport.setEnabled(True)
window.systemClock.setText('2026-10-24  16:32:18')
window.rtcStatus.setText('RTC restored')
window.show()
app.processEvents()
args.output.mkdir(parents=True,exist_ok=True)
report={'mode':'production .ui layout; synthetic values; ARM callbacks not executed','pages':[]}
for index,name in enumerate(['analysis','device','network','tools']):
    window.tabs.setCurrentIndex(index)
    app.processEvents()
    if index==2:
        window.mode.setCurrentIndex(1)
        for edit in [window.ipInput,window.maskInput,window.gatewayInput]:edit.setEnabled(True)
    window.grab().save(str(args.output/(name+'.png')))
    page=window.tabs.widget(index)
    page_rect=page.rect()
    clipped=[]
    for child in page.findChildren(__import__('PyQt5.QtWidgets',fromlist=['QWidget']).QWidget):
        if child.isVisible() and child.width()>0 and child.height()>0:
            origin=child.mapTo(page,child.rect().topLeft())
            if origin.x()<0 or origin.y()<0 or origin.x()+child.width()>page_rect.width()+1 or origin.y()+child.height()>page_rect.height()+1:
                clipped.append(child.objectName())
    assert not clipped,(name,clipped)
    report['pages'].append({'page':name,'clipped_widgets':clipped})
assert window.apply.height()>=40
report['window_size']=[window.width(),window.height()]
report['apply_touch_height']=window.apply.height()
for button in (window.pairButton,window.usbRefresh,window.usbExport):
    assert button.height() >= 40, button.objectName()
report['tools_touch_heights']={button.objectName():button.height() for button in (window.pairButton,window.usbRefresh,window.usbExport)}
# Exercise visible busy state only; ARM QProcess callbacks are separately compiled.
window.usbExport.setEnabled(False)
window.usbRefresh.setEnabled(False)
window.usbDevices.setEnabled(False)
window.usbCase.setText('Exporting case SYNTHETIC-001')
window.usbStatus.setText('Writing report and images. Keep USB storage connected.')
window.pairCode.setText('------')
window.pairStatus.setText('Computer paired. Generate a new code if needed.')
app.processEvents()
assert not window.usbExport.isEnabled() and not window.usbDevices.isEnabled()
window.grab().save(str(args.output/'tools-busy.png'))
report['tools_fixture_states']=['active pairing + ready USB','used pairing + USB busy']
(args.output/'report.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
print(json.dumps(report,indent=2))
