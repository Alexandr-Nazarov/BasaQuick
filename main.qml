import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


//import "qml.qrc:/AllDeals.qml" as Deals
import "qrc:/datatest.js" as Datas
ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("TradingMetall")
    minimumWidth:button_new_deal.width+button_new_deal_form_current.width+row.anchors.margins*3
    minimumHeight: (button_new_deal.height +row.anchors.margins)*2

    header:MyToolBar{ }

    ColumnLayout {

        id: columnL
        anchors.fill: parent
        anchors.margins: 10


        RowLayout {
            id: row
            x: 0
            y: 45
            width: 640
            height: 40
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

            anchors.margins: 10
            spacing: 10



            Button{
                id: button_new_deal
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

            Button {
                id: button_new_deal_form_current
                text: qsTr("New Deal from Current")
                onClicked: console.log("new deal")
            }

        }


        ColumnLayout {
            x:parent.anchors.margins
            y:row.y+row.height+parent.anchors.margins
            clip: true
            ResizableTable{}
        }
    }

}



