import QtQuick 2.0
//import QtQuick.Window 2.12
import QtQuick.Controls 2.5

ToolBar{
       Row {
           spacing: 10
              anchors.fill: parent

                   ToolButton {
                       text: qsTr("File")
                       onClicked: stack.pop()

                   }

                   ToolButton {
                       text: qsTr("Menu")
                     //  Menu: fileMenu
                       onClicked: fileMenu.popup()
                   }
                   Menu {id:fileMenu;
                         MenuItem {text: qsTr("Open")}
                         MenuItem {text: qsTr("Next")}
                   }

         }
 }




