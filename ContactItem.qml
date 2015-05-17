import QtQuick 2.0
Component {
        id: chatMessage

        Rectangle {
            id: content
            width: contactBox.width
            height: 85
            color: "#faceb0"
            Text {
                text: name+' '+surname
                font.pointSize: 20
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
                    if (content.state != "ACTIVE")
                        content.state = "ACTIVE"
                    else
                        content.state = "HOVER"
                }
                onEntered: {
                    if (content.state != "ACTIVE")
                        content.state = "HOVER"
                }
                onExited: {
                    if (content.state != "ACTIVE")
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

                    PropertyChanges {
                        target: divider.gradient.stops[0]
                        color: "#4b3245"
                    }

                },
                State {
                    name: "ACTIVE"
                    PropertyChanges {
                        target: content
                        color: "#fdf5e6"
                    }

                    PropertyChanges {
                        target: divider.gradient.stops[0]
                        color: "#fdf5e6"
                    }

                }
            ]

        }


    }
