//pragma Deal
import QtQuick 2.0

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


Window {
    id: deal_window
    visible: true
    width: 200
    height: 200
    title: qsTr("Deal")

    Button{
        x: 56
        y: 155
        width: 100
        height: 26
        text: qsTr("Ok")

        onClicked: {Qt.quit() }
    }
}
