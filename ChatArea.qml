import QtQuick 2.0

Rectangle {

    width: chat.width * 0.66
    height: chat.height

    Rectangle {

        id: chatAreaBox
        anchors.left: parent.left + parent.width * 0.4
        width: chatVokno.width * 0.33
        height: chatVokno.height
        color: "yellow"


        ChatMessage {
            id: chatMessage
        }

        ListView {
            id: adasdsa

            anchors { fill: parent; margins: 2 }
            model: ChatList {}
            delegate: chatMessage
            cacheBuffer: 50
        }

    }

}

