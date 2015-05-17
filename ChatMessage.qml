import QtQuick 2.0
Component {
        id: dragDelegate

        Rectangle {
            id: content
            width: contactSidebar.width
            height: Math.max(30,contactSidebar.height/10)
            color: "#4b3832"
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
                y:100
                gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4b3832" }
                        GradientStop { position: 1.0; color: "#342723" }
                    }
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
