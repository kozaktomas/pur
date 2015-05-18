import QtQuick 2.0

Component {

    id: chatMessage

    Rectangle {
        id: chatMessageRectangle
        width: chatAreaBox.width
        height: myText.paintedHeight + 35

        Rectangle {
            id: firstBreak
            anchors.top: parent.top
            width: chatMessageRectangle.width
            height: 5
        }

        Rectangle {
            id: textRectangle
            width: chatAreaBox.width
            height: myText.paintedHeight + 30 /* + myDate.paintedHeight */
            anchors.top: firstBreak.bottom
            anchors.horizontalCenter: chatMessageRectangle.horizontalCenter
            color: "#e0ffd6"
            radius: 4
            border.width: 4
            border.color: "#CCC"

            Text {
                id: myText
                width: chatMessageRectangle.width - 30
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.horizontalCenter: textRectangle.horizontalCenter
                text: "<strong>" + author + "</strong> - " + message
                wrapMode: Text.Wrap
                font.pixelSize: 20
            }

        }

        Rectangle {
            anchors.top: textRectangle.bottom
            width: chatMessageRectangle.width
            height: 5
        }

    }



}


