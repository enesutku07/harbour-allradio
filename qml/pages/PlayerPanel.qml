import QtQuick 2.0
import Sailfish.Silica 1.0

DockedPanel {
    id: panel
    width: parent.width
    height: Theme.itemSizeLarge + Theme.paddingLarge
    dock: Dock.Bottom
    open: showPlayer


    RemorsePopup {id: remorse}

    Rectangle {
        anchors.fill: parent
        opacity: 0.9
        color: "black"
    }

    BusyIndicator {
        anchors.centerIn: parent
        size: BusyIndicatorSize.Large
        running: playerStatus == 4
    }
            BackgroundItem {
                height: parent.height
                anchors.left: parent.left
                anchors.right: pause.left
                anchors.rightMargin: 20
                onClicked: {
                    onClicked: remorse.execute(qsTr("Opening webpage"), function() {Qt.openUrlExternally(website)}, 3000)
                }

                Image {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 30
                    anchors.left: parent.left
                    width: parent.height - 30
                    opacity: 0.6
                    fillMode: Image.PreserveAspectFit
                   id: logo
                   source: picon
                 }

                Label {
                    anchors.left: logo.right
                    anchors.leftMargin: 30
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width - (pause.width + logo.width)
                    color: Theme.highlightColor
                    font.pixelSize: Theme.fontSizeMedium
                    fontSizeMode: Text.VerticalFit
                    wrapMode: Text.Wrap
                    maximumLineCount: 3
                    id: listeningTo
                    text: radioStation
                    opacity: 0.9
                }
            }

            IconButton {
                id: pause
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                icon.source: playMusic.playing ? "image://theme/icon-l-pause" : "image://theme/icon-l-play"
                onClicked: playMusic.playing ? pauseStream() : playStream()
            }
}
