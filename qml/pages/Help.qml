import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    //allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height + Theme.paddingLarge
        contentWidth: parent.width
        VerticalScrollDecorator {}
        Column {
            id: column
            width: parent.width

            PageHeader {
                id: header
                title: qsTr("Yardım")
            }

            Text {
                id: text
                x: Theme.horizontalPageMargin
                width: parent.width - 2*x
                wrapMode: Text.WordWrap
                color: Theme.primaryColor
                linkColor: Theme.highlightColor
                onLinkActivated: remorse.execute(qsTr("web sayfası açılıyor"), function() {Qt.openUrlExternally(link)}, 3000)
                textFormat: Text.StyledText
                font.pixelSize: Theme.fontSizeMedium
                //horizontalAlignment: Text.AlignHCenter
                text: "<h2>" + qsTr("Temel bilgiler") + "</h2>"
                      + qsTr("Bayrağa / ada tıklayarak ülkeyi seçin, ardından dinlemek istediğiniz kanala tıklayın") + ".

                <p><br>" + qsTr("Çalarken, ekranın altında o anda çalan radyo istasyonunun adını ve ülke bayrağını göreceksiniz.")+"</p><br><p>"+
                qsTr("Aşağı kaydırarak ve 'liste olarak göster' alt seçeneğini belirleyerek ülke seçimini liste ve simgeler arasında değiştirebilirsiniz. ızgara olarak göster'") + "</p>

                <h2>"+qsTr("Aranıyor")+"</h2><p>"+

                qsTr("Ülkeyi tıkladığınızda ve kanallar sayfasındayken, seçimi kanal adına göre aramak / filtrelemek için listenin üstündeki aynaya tıklayabilirsiniz. ")+".</p>

                <h2>"+qsTr("Uyku zamanı")+"</h2><p>"

                +qsTr("Aşağı kaydırın ve uyku zamanlayıcısını seçin, ardından radyonun çalmayı durdurmasını isteyene kadar süreyi dakika olarak ayarlayın.")+".</p><br><h2>"+qsTr("More")+"</h2><p>"+
                qsTr("Bu yardım bir taslaktır! Güncellenebilir mi ?! :-)")+"</p>"



            }
        }
    }
}
