import QtQuick 2.0

Rectangle {
    id: chatMenu
    border.width: 1

    Text {
        id: document
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 2
        text: "\uf15b"
        font.family: "FontAwesome"
        color: "gray"
        font.pointSize: 22
    }

    Text {
        id: chat
        anchors.left: document.right
        anchors.bottom: document.bottom
        anchors.leftMargin: 10
        text: "\uf1d7"
        font.family: "FontAwesome"
        color: "gray"
        font.pointSize: 22
    }

    Text {
        id: videoCall
        anchors.left: chat.right
        anchors.bottom: chat.bottom
        anchors.leftMargin: 10
        text: "\uf03d"
        font.family: "FontAwesome"
        color: "gray"
        font.pointSize: 22
    }

    /*
    Image {
        id: document
        anchors.left: chatMenu.left
        anchors.bottom: chatMenu.bottom
        anchors.rightMargin: parent.width * 0.18
        width: parent.width * 0.1
        height: parent.width * 0.1
        sourceSize.width: 128
        sourceSize.height: 128
        source: "images/documents.png"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: chat
        anchors.left: document.right
        anchors.top: document.top
        anchors.rightMargin: parent.width * 0.25
        width: parent.width * 0.1
        height: parent.width * 0.1
        sourceSize.width: 128
        sourceSize.height: 128
        source: "images/chat.png"
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: videoCall
        anchors.left: chat.right
        anchors.top: chat.top
        width: parent.width * 0.1
        height: parent.width * 0.1
        sourceSize.width: 128
        sourceSize.height: 128
        source: "images/video_call.png"
        fillMode: Image.PreserveAspectFit
    }
    */
}
