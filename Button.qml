import QtQuick 2.0

BorderImage {

    property alias text: txt.text
    id: mybutton
   // source: "file"
    width: txt.width+15; height: txt.height+15
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5
    //anchors.centerIn: parent
    //source: "qrc:/button.png"
    signal clicked;

    Rectangle{
    id:rect
  //  color: "black"
    anchors.fill: txt

    }

    Text {
        id: txt
        text: qsTr("Button")
        color: "green"
        anchors.centerIn: parent
        font.pixelSize: 20
    }

    MouseArea {
    anchors.fill: parent
    onClicked: parent.clicked();

    onPressed: { parent.text=qsTr("Clicked")
                parent.source="qrc:/button.png"
               }
    onReleased: parent.text= qsTr("Released")
    }

}

