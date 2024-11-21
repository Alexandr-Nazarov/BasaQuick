import QtQuick 2.12
import QtQuick.Window 2.12

//import "Button.qml" as MyButton

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {
        id: row
        x: 9
        y: 44
        width: 623
        height: 394

    }

    Column {
        id: column
        x: 24
        y: 62
        width: 595
        height: 33



        Button {
        anchors.left: parent
      //  anchors. parent
        text: qsTr("New Deal")

        }

    }

 }

