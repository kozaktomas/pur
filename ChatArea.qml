import QtQuick 2.0

Rectangle {

    id: chatAreaBox
    anchors.left: contactArea.right
    anchors.leftMargin: 20
    width: chatVokno.width * 0.66
    height: chatVokno.height

    property string modelId: chatList

    ChatMessage {
        id: chatMessage
    }



    ListView {
        id: chatListView
        width: chatAreaBox.width * 0.8
        height: chatAreaBox.height * 0.8
        model: ChatList {
            id: modelId
        }
        spacing: 25
        delegate: chatMessage
        cacheBuffer: 50
        Component.onCompleted: positionViewAtEnd()
    }



    Rectangle {
        id: rowTextArea
        anchors.verticalCenter: chatAreaBox.bottom
        width: chatAreaBox.width
        height: chatAreaBox.height * 0.2


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
                anchors.fill: parent
                text: "SEND"
                color: "white"
                font.pointSize: 14
            }
        }

        MouseArea {
            anchors.fill: chatSubmit
            onClicked: {
                modelId.append({
                    message: "<strong>David Prochazka</strong> - " + textEdit.text,
                    /*date: new Date().toLocaleString(Qt.locale("cs"))*/
                })

                textEdit.text = ""
                chatListView.positionViewAtEnd()
            }
        }

    }


}

