import QtQuick 2.0
import Sailfish.Silica 1.0

PullDownMenu {
  /*  MenuItem {
        text: qsTr("Drop Database")
        onClicked: dropDb()
    } */
    MenuItem {
        text: qsTr("Yardım")
        onClicked: pageStack.push(Qt.resolvedUrl("Help.qml"))
    }
    MenuItem {
        text: qsTr("AllRadio Hakkında")
        onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
    }
    MenuItem {
        text: qsTr("Uyku zamanı")
        onClicked: pageStack.push(Qt.resolvedUrl("SleepTimerPage.qml"))
    }
}
