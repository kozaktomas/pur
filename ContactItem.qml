import QtQuick 2.0
Component {
        id: chatMessage

        Rectangle {
            id: content
            width: contactBox.width
            height: 85
            color: "#faceb0"

            Rectangle{
                anchors.top: content.top
                anchors.left: content.left
                width: parent.width
                height: 80
                id: data


                Image {
                    id: avatarImage
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    source: "images/m.jpg"
                    width: 50
                    height: 50
                }

                Text {
                    anchors.left: avatarImage.right
                    anchors.verticalCenter: parent.verticalCenter
                    text: name
                    font.pointSize: 14
                    wrapMode: Text.Wrap
                }

            }



            Rectangle{
                id:divider
                anchors.bottom: parent.bottom
                width: parent.width
                height: 5
                y: 100
                color: '#CCC'
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
                        color: "#faceb0"
                    }

                }
            ]

        }


    }
