import QtQuick 2.0
Component {
        id: chatMessage

        Rectangle {
            id: content
            width: contactBox.width
            height: 85
            color: "#faceb0"

            Image {
                anchors.verticalCenter: content.verticalCenter
                id: avatarImage
                source: "images/m.jpg"
                width: 50
                height: 50
            }

            Text {
                text: name+' '+surname
                font.pointSize: vokno.fontSize(6)
                anchors.centerIn: parent
            }


            Rectangle{
                id:divider
                anchors.bottom: parent.bottom
                width: parent.width
                height: 5
                y: 100
                color: 'red'
            }



            MouseArea{
                enabled: true
                hoverEnabled: true
                anchors.fill: parent
                onClicked: {

                }

                onEntered: {
                    content.state = "HOVER"
                }
                onExited: {
                    content.state = "NORMAL"
                }
            }


            states: [
                State {
                    name: "NORMAL"
                    PropertyChanges {
                        target: content
                    }
                },
                State {
                    name: "HOVER"
                    PropertyChanges {
                        target: content
                        color: "#4b3245"
                    }

                }
            ]

        }


    }
