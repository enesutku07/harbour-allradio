import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    //allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        VerticalScrollDecorator {}
            PageHeader {title:((sleepTime > 0) ? (qsTr("Kalan süre: ") + (sleepTime) + qsTr(" dakika")) : qsTr("zaman seç : ") + minutes.value )}

            ValuePicker {
                id: minutes
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                max: 121
                min: 1
                value: sleepTime
            }
            Label {
                text: minutes.value
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                color: Theme.secondaryHighlightColor
                font.family: Theme.fontFamilyHeading
                font.pixelSize: Theme.fontSizeHuge
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                spacing: Theme.paddingLarge

                Button {
                        text: ((sleepTime > 0) ? (qsTr("Değişiklik")) : (qsTr("Başla")))
                        onPressed: sleepTime = minutes.value
                    }
                Button {
                        text: qsTr("Dur")
                        onPressed: sleepTime = 0;
                    }
            }
    }
}
