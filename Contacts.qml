import QtQuick 2.0

    Rectangle {

        id: contactBox
        anchors.left: parent.left
        width: chatVokno.width * 0.33
        height: chatVokno.height
        color: "#DDD"


        Rectangle {
            id: searchBox
            anchors.top: contactBox.top
            anchors.left: contactBox.left
        }


        ContactItem{
            id: chatMessage
        }

        ListView {
            id: adasdsa

            anchors { fill: parent; margins: 2 }
            model: ContactList {}
            delegate: chatMessage
            cacheBuffer: 50
        }

    }




