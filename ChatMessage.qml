import QtQuick 2.0

Component {

    id: chatMessage

    Rectangle {
        id: chatMessageRectangle
        width: chatAreaBox.width
        height: myText.paintedHeight + 40


        Rectangle {
            width: chatMessageRectangle.width
            height: 15
        }

        Rectangle {
            id: textRectangle
            width: chatAreaBox.width
            height: myText.paintedHeight + 10
            anchors.verticalCenter: chatMessageRectangle.verticalCenter
            anchors.horizontalCenter: chatMessageRectangle.horizontalCenter
            color: "orange"
            radius: 12


            Text {
                id: myText
                width: chatMessageRectangle.width - 30
                anchors.verticalCenter: textRectangle.verticalCenter
                anchors.horizontalCenter: textRectangle.horizontalCenter
                text: message + " " + date
                wrapMode: Text.Wrap
                font.pixelSize: 20
            }

        }

        Rectangle {
            width: chatMessageRectangle.width
            height: 15
        }

    }



}


