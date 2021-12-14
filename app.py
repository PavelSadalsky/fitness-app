import os
import sys
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QUrl
from PySide6 import __file__ as pyside_file

from core import Person

if __name__ == '__main__':
    dirname = os.path.dirname(pyside_file)
    plugin_path = os.path.join(dirname, 'plugins', 'platforms')
    print(plugin_path)
    os.environ['QT_QPA_PLATFORM_PLUGIN_PATH'] = plugin_path
    os.environ['QML2_IMPORT_PATH'] = os.path.join(dirname, 'qml')
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    service = Person()
    engine.rootContext().setContextProperty("service", service)

    engine.load(QUrl("ui/main.qml"))
    engine.rootObjects()

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
