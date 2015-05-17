import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item{
    id: mainForm

    signal mainFormSubmitted

    Rectangle {
        id: loginForm
        width: 640
        height: 480


        Rectangle {
            id: daddy
            x: 220
            y: 140
            width: 200
            height: 200
            color: "#ffffff"

            anchors {
                horizontalCenter: loginForm.horizontalCenter
                verticalCenter: loginForm.verticalCenter
            }

            Text {
                x: 11
                y: 37
                text: "Heslo: "
                font.pointSize: 15
                font.bold: true
            }

            LoginInput {
                id: password
                x: 10
                y: 63
                color: "#50b42b"
                radius: 0
                border.width: 2
            }

            Button {
                id: loginButton
                x: 10
                y: 97
                width: 180
                height: 23
                text: "Login"
            }

            MouseArea{
                id: loginMouseArea
                anchors.fill: loginButton
                onClicked: {
                    mainFormSubmitted()
                }
            }
        }
    }
}
