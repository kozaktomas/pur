import QtQuick 2.0

Rectangle {

    id: chatAreaBox
    anchors.top: contactArea.top
    anchors.left: contactArea.right
    anchors.right: chatVokno.right
    anchors.leftMargin: 20
    anchors.rightMargin: 20

    width: chatVokno.width * 0.65
    height: chatVokno.height


    ChatMessage {
        id: chatMessage
    }



    ListView {
        id: chatListView
        anchors.left: chatAreaBox.left
        anchors.top: chatAreaBox.top
        anchors.bottom: chatMenu.top
        width: chatAreaBox.width * 0.8
        height: chatAreaBox.height - chatMenu.height - rowTextArea.height - 10


        model: ChatList {
            id: chatList
        }
        spacing: 10
        delegate: chatMessage
        cacheBuffer: 50
        Component.onCompleted: positionViewAtEnd()
    }


    ChatMenu{
        id: chatMenu
        anchors.left: rowTextArea.left
        anchors.bottom: rowTextArea.top
        width: chatAreaBox.width
        height: chatAreaBox.height * 0.1
    }

    Rectangle {
        id: rowTextArea
        anchors.left: chatMenu.left
        anchors.bottom: chatAreaBox.bottom
        width: chatAreaBox.width * 1
        height: Math.min(chatAreaBox.height * 0.3, 100)


        Rectangle {
            id: chatInputText
            anchors.top: parent.top
            anchors.left: parent.left
            width: parent.width * 0.9
            height: parent.height
            color: "#FFF"
            border.width: 6
            border.color: "#BBB"

            TextEdit{
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.fill: parent
                anchors.leftMargin: 20
                anchors.rightMargin: 20
                anchors.topMargin: 10
                id: textEdit
                font.pixelSize: 20
                wrapMode: TextEdit.WordWrap
            }
        }

        Rectangle {
            id: chatSubmit
            width: parent.width * 0.1
            height: parent.height
            anchors.left: chatInputText.right

            Text {
                id: arrow
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: (parent.height / 2) - (arrow.paintedHeight / 2)
                anchors.leftMargin: (parent.width / 2) - (arrow.paintedWidth / 2)
                text: "\uf1d8"
                font.family: "FontAwesome"
                color: "blue"
                font.pointSize: 22
            }
        }

        MouseArea {
            anchors.fill: chatSubmit
            onClicked: {
                chatList.append({
                    author: "Tomas Kozak",
                    message: textEdit.text
                    /*date: new Date().toLocaleString(Qt.locale("cs"))*/
                })

                textEdit.text = ""
                chatListView.positionViewAtEnd()
            }
        }

    }


}

