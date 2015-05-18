import QtQuick 2.0

/* Jedna polozka v seznamu kontaktu */
Component {
        id: chatMessage

        Rectangle {
            id: content
            width: contactBox.width
            height: 85

            Rectangle{
                id: data
                anchors.top: content.top
                anchors.left: content.left
                width: parent.width
                height: 80
                color: "#fff"

                Rectangle{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    width: 50
                    height: 50
                    border.width: 2
                    border.color: "#000"

                    Image {
                        id: avatarImage
                        anchors.top: parent.top
                        anchors.left: parent.left
                        width: parent.width
                        height: parent.height
                        sourceSize.width: 42
                        sourceSize.height: 50
                        source: "images/m.jpg"
                    }
                }

                Text {
                    anchors.left: avatarImage.parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 5
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
                    if (active === 0){
                        content.state = "HOVER"
                    }
                }
                onExited: {
                    if (active === 0){
                        content.state = "NORMAL"
                    }
                }
            }


            states: [
                State {
                    name: "NORMAL"
                    when: (active === 0)
                    PropertyChanges {
                        target: data
                        color: "#fff"
                    }
                },

                State{
                    name: "ACTIVE"
                    when: (active === 1)
                    PropertyChanges {
                        target: data
                        color: "#e0ffd6"
                    }
                },

                State {
                    name: "HOVER"
                    when: (active === 0)
                    PropertyChanges {
                        target: data
                        color: "#EEE"
                    }

                }
            ]

        }


    }
