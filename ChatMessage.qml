import QtQuick 2.0

Component {

    id: chatMessage

    Rectangle {
        id: chatMessageRectangle
        width: chatAreaBox.width
        height: myText.paintedHeight + 20


        Rectangle {
            id: firstBreak
            anchors.top: parent.top
            width: chatMessageRectangle.width
            height: 5
        }

        Rectangle {
            id: textRectangle
            width: chatAreaBox.width
            height: myText.paintedHeight + 10 /* + myDate.paintedHeight */
            anchors.top: firstBreak.bottom
            anchors.horizontalCenter: chatMessageRectangle.horizontalCenter
            color: "orange"
            radius: 8


            Text {
                id: myText
                width: chatMessageRectangle.width - 30
                anchors.top: parent.top
                anchors.horizontalCenter: textRectangle.horizontalCenter
                text: message
                wrapMode: Text.Wrap
                font.pixelSize: 20
            }

            /*
            Text {
                id: myDate
                width: chatMessageRectangle.width - 30
                anchors.top: myText.bottom
                anchors.horizontalCenter: textRectangle.right
                text: date
                wrapMode: Text.Wrap
                font.pixelSize: 20
            }
            */

        }

        Rectangle {
            anchors.top: textRectangle.bottom
            width: chatMessageRectangle.width
            height: 5
        }

    }



}


