//pragma Deal
import QtQuick 2.0

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


Window {
    id: deal_window
    visible: true
    width: 300
    height: 300
    title: qsTr("Deal")
    Row {
        id: row
        x: 0
        y: 0
        width: parent.width
        height: parent.height

    Button{
        x: 100
        y: 250
        width: 100
        height: 26
        anchors.centerIn: parent
        text: qsTr("Ok")

        onClicked: {Qt.quit() }
    }

    ComboBox {
        id: comboBox
        x: 19
        y: 31
        width: 266
        height: 30
    }

    Label {
        id: label
        x: 24
        y: 90
        width: 52
        height: 16
        text: qsTr("Client")
    }

    TextEdit {
        id: textEdit

        x: 68
        y: 90
        width: 217
        height: 20
        textFormat: Text.AutoText
        font.wordSpacing: 0
        cursorVisible: false
        clip: false
        font.pixelSize: 12
    }

}
}
