import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

//import "Button.qml" as MyButton

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("TradingMetall")

    Row {
        id: row
        x: 12
        y: 13
        width: 613
        height: 447



    Column {
        id: column
        x: 12
        y: 13
        width: 613
        height: 58


//        MyButton {
//        anchors.left: parent
//        //  anchors. parent
//        text: qsTr("New Deal")
//        }

//        Deal{

//        }

        Button{
            anchors.top:parent.Center
            anchors.left: parent
            text: qsTr("New Deal")
            onClicked: {
                var comp=Qt.createComponent("Deal.qml");
                if (comp.status===Component.Ready ) {
                 var wind=comp.createObject(null);
                    wind.show();
                }

                       //   Qt.quit()
                          }

        }

    }

    }

 }

