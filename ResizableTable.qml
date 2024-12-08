import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


import "qrc:/datatest.js" as Datas
Rectangle {
    id: table
    property var model



    ColumnLayout{
        spacing: 0

        //    HorizontalHeaderView{
        //    }

        TableView{
            id:table_view_header
            Layout.minimumHeight: 20
            delegate: delegate_header
            model: Datas.headermodel
        }

        TableView{
            id:table_view
            Layout.minimumHeight: 100
            focus: true
            delegate: delegate
            model: Datas.modeltest
        }
    }


    Component {
        id:delegate_header
        RowLayout {
            spacing: 0
            ItemForTable{
                color: "#bbb"
                text:modelData.text

            }
            ItemForTable{
                color: "#bbb"
                text:modelData.text2
            }
            ItemForTable{
                color: "#bbb"
                text:modelData.text3
            }
        }
    }

    Component {
        id:delegate
        RowLayout {
            spacing: 0

            ItemForTable{
                TextEdit {
                    id: headerEdit
                    width: parent.width
                    text:modelData.inn
                    onTextChanged: {
                        modelData.setProperty(index, "inn", headerEdit.text)
                    }
                }
            }
            ItemForTable{
                TextEdit {
                    width: parent.width
                    text:modelData.art
                }
            }
            ItemForTable{
                TextEdit {
                    width: parent.width
                    text: modelData.cat
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
