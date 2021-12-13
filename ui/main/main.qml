import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Window {
    id: main
    width: 800; height: 800
    visible: true
    color: "white"
    minimumWidth : 600
    minimumHeight : 600
    Material.theme : Material.Light
    Material.accent : Material.LightGreen

    Label {
        id : sexLabel
        text : "Выберите пол"
        font.pixelSize : 48
        color : "#3d3c3d"
        font.bold : true

        anchors{
            horizontalCenter: parent.horizontalCenter
            top : parent.top
            topMargin : 200
        }
    }
    Row {
        spacing : 25
        anchors{
            top : sexLabel.bottom
            topMargin : 25
            horizontalCenter: parent.horizontalCenter
        }
        DefaultButton{
            btnText: "Пацан"
            Material.background: Material.LightBlue
        }
        DefaultButton{
            btnText: "Пацанка"
            Material.background: Material.Pink
        }
    }
}