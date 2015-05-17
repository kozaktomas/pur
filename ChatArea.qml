import QtQuick 2.0

Rectangle {

    id: chatAreaBox
    anchors.left: contactArea.right
    anchors.leftMargin: 20
    width: chatVokno.width * 0.66
    height: chatVokno.height
    color: "purple"

    ChatMessage {
        id: chatMessage
    }

    ListView {
        id: adasdsa
        anchors.verticalCenter: chatAreaBox.top
        width: chatAreaBox.width * 0.8
        height: chatAreaBox.height * 0.7
        anchors { fill: parent; }
        model: ChatList {}
        delegate: chatMessage
        cacheBuffer: 50
    }


    Rectangle {
        id: inputTextArea
        anchors.verticalCenter: chatAreaBox.bottom
        width: chatAreaBox.width
        height: chatAreaBox.height * 0.3

        Row {

            id: rowTextArea
            width: inputTextArea.width
            height: inputTextArea.height

            Rectangle {
                id: chatInputText
                width: rowTextArea.width * 0.8
                height: rowTextArea.height
                color: "#FF0"

                TextEdit{
                    anchors.fill: chatInputText
                }
            }

            Rectangle {
                id: chatSubmit
                width: rowTextArea.width * 0.2
                height: rowTextArea.height
                color: "white"

            }
        }
    }


}

