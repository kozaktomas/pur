import QtQuick 2.0

Rectangle {

    id: chatAreaBox
    anchors.left: contactArea.right
    width: chatVokno.width * 0.66
    height: chatVokno.height
    color: "purple"




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

