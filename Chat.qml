import QtQuick 2.0

Rectangle {

    id: chatVokno
    anchors.horizontalCenter: parent.horizontalCenter
    width: vokno.width * 0.9
    height: vokno.height
    color: 'blue'

    Contacts {id: contactArea}

    ChatArea {id: chatArea}

}

