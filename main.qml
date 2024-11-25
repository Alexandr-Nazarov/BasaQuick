import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

//import "AllDeals.qml" as Deals

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("TradingMetall")
  //  minimumWidth:button_new_deal.width+Deals.button_new_deal_form_current.width+Deals.row.anchors.margins*3
  //  minimumWidth: AllDeals{}   alldeals.button_new_deal.width
    Layout.minimumWidth:AllDeals.min_width
    header:MyToolBar{ }
    //footer:
    AllDeals{}





}

