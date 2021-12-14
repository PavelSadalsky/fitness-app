import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
        Label {
            id : infoLabel
            text : "Какой образ жизни\n вы поддерживаете?"
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
            id : sedentaryLifestyle
            btnText : "Сидячий образ жизни"
            Material.background: Material.Grey
            width : 400
            anchors{
                top : infoLabel.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : littleActivity
            btnText : "Небольшая активность"
            Material.background: Material.Grey
            width : 400
            anchors{
                top : sedentaryLifestyle.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : middleActivity
            btnText : "Умеренная активность"
            Material.background: Material.Grey
            width : 400
            anchors{
                top : littleActivity.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : highActivity
            btnText : "Умеренная активность"
            Material.background: Material.Grey
            width : 400
            anchors{
                top : middleActivity.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : veryHighActivity
            btnText : "Умеренная активность"
            Material.background: Material.Grey
            width : 400
            anchors{
                top : highActivity.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        BackButton{}
        HomeButton{}
    }
}