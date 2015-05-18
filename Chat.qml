import QtQuick 2.0

Rectangle {

    id: chatVokno
    anchors.horizontalCenter: parent.horizontalCenter
    width: vokno.width * 0.95
    height: vokno.height

    /* Hodnoty pro separator */
    property int separator: 5
    property string separatorColor: "#CCC"

    /* Separator 1 */
    Rectangle {
        id: leftSeparator
        anchors.left: parent.left
        anchors.top: parent.top
        width: separator
        height: vokno.height
        color: separatorColor
    }

    /* Levy panel s kontakty */
    Contacts {
        id: contactArea
        anchors.left: leftSeparator.right
        anchors.top: parent.top
    }

    /* Separator 2 */
    Rectangle {
        anchors.left: contactArea.right
        anchors.top: parent.top
        width: separator
        height: vokno.height
        color: separatorColor
    }

    /* Prostor pro chat */
    ChatArea {
        id: chatArea
    }


}

