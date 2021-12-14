import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
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
                onClicked : stackView.push(secondPage)
            }
            DefaultButton{
                btnText: "Пацанка"
                Material.background: Material.Pink
                onClicked : stackView.push(secondPage)
            }
        }
    }
}