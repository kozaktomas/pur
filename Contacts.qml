import QtQuick 2.0

    /* Levy sloupec s kontakty */
    Rectangle {

        id: contactBox
        anchors.top: parent.top
        anchors.left: parent.left
        width: chatVokno.width * 0.33
        height: chatVokno.height
        color: "#DDD"


        /* Vyhledavaci pole */
        Rectangle {
            id: searchBox
            anchors.top: contactBox.top
            anchors.left: contactBox.left
            width: parent.width
            z: 1000
            height: 80

            Text {
                id: searchLabel
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 3
                anchors.topMargin: 8
                text: "Search: "
                font.pointSize: 20
                height: parent.height * 0.5
            }
            Rectangle {
                id: searchTextRect
                anchors.left: searchLabel.right
                anchors.top: searchLabel.top
                width: parent.width - searchLabel.width - 5
                height: parent.height * 0.5
                color: "#EEE"
                border.color: "#CCC"
                border.width: 2

                TextEdit{
                    id: searchTextEdit
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    anchors.topMargin: 10
                    anchors.bottomMargin: 10
                    font.pixelSize: 20
                    wrapMode: TextEdit.WordWrap
                }
            }


        }



        /* ListView s kontakty */
        Rectangle {


            anchors.left: searchBox.left
            anchors.top: searchBox.bottom
            width: parent.width
            height: parent.height - searchBox.height - 5

            ContactItem{
                id: chatMessage
            }
            ListView {
                anchors {
                    fill: parent
                    margins: 2
                }
                width: parent.width
                height: parent.height
                model: ContactList {}
                delegate: chatMessage
                cacheBuffer: 50
            }
        }
    }




