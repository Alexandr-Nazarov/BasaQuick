import QtQuick 2.12

Rectangle{
    property alias text: txt.text
    border.width: 1
    border.color: "black"
    width:200
    height: 20
    clip: true
    color: (index%2  ===0 ? "#aaaaff":"#affafa")
    Text{
        id:txt
        anchors.centerIn: parent
        text: ""
    }

    MouseArea {
    onClicked: console.log("fd")
    }

}
