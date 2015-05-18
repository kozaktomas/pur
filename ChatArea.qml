import QtQuick 2.0

Rectangle {

    id: chatAreaBox
    anchors.left: contactArea.right
    anchors.leftMargin: 20
    width: chatVokno.width * 0.66
    height: chatVokno.height


    ChatMessage {
        id: chatMessage
    }



    ListView {
        id: chatListView
        anchors.left: chatAreaBox.left
        anchors.top: chatAreaBox.top
        width: chatAreaBox.width * 0.8
        height: chatAreaBox.height * 0.6
        model: ChatList {
            id: chatList
        }
        spacing: 25
        delegate: chatMessage
        cacheBuffer: 50
        Component.onCompleted: positionViewAtEnd()
    }


    ChatMenu{
        id: chatMenu
        anchors.left: chatListView.left
        anchors.top: chatListView.bottom
        width: chatAreaBox.width
        height: chatAreaBox.height * 0.2
    }

    Rectangle {
        id: rowTextArea
        anchors.left: chatMenu.left
        anchors.top: chatMenu.bottom
        width: chatAreaBox.width * 1
        height: chatAreaBox.height * 0.3


        Rectangle {
            id: chatInputText
            anchors.left: parent.left
            width: parent.width * 0.8
            height: parent.height
            color: "#FF0"

            TextEdit{
                anchors.verticalCenter: chatInputText.verticalCenter
                id: textEdit
                anchors.fill: chatInputText
                font.pixelSize: 50
            }
        }

        Rectangle {
            id: chatSubmit
            width: parent.width * 0.2
            height: parent.height
            anchors.left: chatInputText.right
            color: "black"

            Text {
                anchors.verticalCenter: chatSubmit.verticalCenter
                anchors.horizontalCenter: chatSubmit.horizontalCenter
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
                    message: "<strong>Tomas Kozak</strong> - " + textEdit.text,
                    /*date: new Date().toLocaleString(Qt.locale("cs"))*/
                })

                textEdit.text = ""
                chatListView.positionViewAtEnd()
            }
        }

    }


}

