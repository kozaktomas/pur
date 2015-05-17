import QtQuick 2.0

Rectangle {
    width: 180
    height: 28


    Item {
        property alias text: input.text
        anchors.centerIn: parent
        width: 180; height: 28
        TextInput {
            id: input
            color: "#222"; selectionColor: "green"
            font.pixelSize: 16; font.bold: true
            width: parent.width-16
            maximumLength: 16
            anchors.centerIn: parent
            focus: true
        }
    }
}

