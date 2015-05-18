import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

/* Hlavni okno aplikace */
ApplicationWindow {
    id: vokno
    title: qsTr("PUR chat")
    width: 1024
    height: 800
    visible: true
    color: "#DDD"

    // Load the "FontAwesome" font for the monochrome icons.
    FontLoader {
        source: "fonts/fontawesome-webfont.ttf"
    }

    Chat {
        id: chat
    }

    /* Prihlaseni do aplikace */
    /*
    MainForm {
        id: loginForm
        anchors.fill: parent
        onMainFormSubmitted: {
            loginForm.destroy()
            chat.opacity = 1
        }
    }
    */

}
