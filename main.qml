import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: vokno
    title: qsTr("PUR chat")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    Chat {
        id: chat
        opacity: 0
    }

    MainForm {
        id: loginForm
        anchors.fill: parent
        onMainFormSubmitted: {
            loginForm.destroy()
            chat.opacity = 1
        }
    }

}
