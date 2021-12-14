import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
        Label {
            id : infoLabel
            text : "Сколько воды вы\nвыпиваете в день?"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 48
            color : "#3d3c3d"
            font.bold : true

            anchors{
                horizontalCenter: parent.horizontalCenter
                top : parent.top
                topMargin : 80
            }
        }
        DefaultButton{
            id : beer
            onClicked : {
                stackView.push(finalPage)
                //service.set_water_glasses("1")
            }
            btnText : "Воду не пью, только пиво"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : infoLabel.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : twoCups
            onClicked : {
                stackView.push(finalPage)
                //service.set_water_glasses("2")
            }
            btnText : "Меньше двух стаканов воды"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : beer.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : sixCups
            onClicked : {
                stackView.push(finalPage)
                //service.set_water_glasses("4")
            }
            btnText : "2-6 стаканов воды"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : twoCups.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : sevenCups
            onClicked : {
                stackView.push(finalPage)
                //service.set_water_glasses("7")
            }
            btnText : "7-10 стаканов воды"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : sixCups.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : tenCups
            onClicked : {
                stackView.push(finalPage)
                //service.set_water_glasses("10")
            }
            btnText : "Больше 10 стаканов"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : sevenCups.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        BackButton{}
        HomeButton{}
    }
}