import QtQuick 2.0

Component {

    id: chatMessage

    Rectangle {
        id: chatMessageRectangle
        width: chatAreaBox.width
        height: myText.paintedHeight + 50


        Rectangle {
            width: chatMessageRectangle.width
            height: 15
        }

        Rectangle {
            id: textRectangle
            width: chatAreaBox.width
            height: myText.paintedHeight + 20

            anchors.verticalCenter: chatMessageRectangle.verticalCenter
            anchors.horizontalCenter: chatMessageRectangle.horizontalCenter
            color: "orange"
            radius: 12

            Text {
                id: myText
                width: chatAreaBox.width - 25
                height: textRectangle.height

                text: message + date
                wrapMode: Text.Wrap
            }
        }

        Rectangle {
            width: chatMessageRectangle.width
            height: 15
        }

    }



}


