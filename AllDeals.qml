import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5


Item {
    id:alldeals
    anchors.fill: parent
    property real min_width :button_new_deal.width //+button_new_deal_form_current.width//+row.anchors.margins*3

    RowLayout {
      id: row
      anchors.fill: parent
      anchors.margins: 10
      spacing: 10
    //  minimumWidth:button_new_deal.width+Deals.button_new_deal_form_current.width+Deals.row.anchors.margins*3


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
      }

  }
}
