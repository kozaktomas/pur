import QtQuick 2.0

Component {

    id: chatMessage

    Rectangle {
        id: asdasd
        width: 100
        height: 62
        color: '#adeade'

        Text {
            anchors.fill: asdasd
            text: message + date
        }
    }



}


