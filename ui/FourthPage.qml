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
            onClicked : stackView.push(fifthPage)
            btnText : "Сидячий образ жизни"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : infoLabel.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : littleActivity
            onClicked : stackView.push(fifthPage)
            btnText : "Небольшая активность"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : sedentaryLifestyle.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : middleActivity
            onClicked : stackView.push(fifthPage)
            btnText : "Умеренная активность"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : littleActivity.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : highActivity
            onClicked : stackView.push(fifthPage)
            btnText : "Высокая активность"
            Material.background: Material.Grey
            width : 500
            anchors{
                top : middleActivity.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        DefaultButton{
            id : veryHighActivity
            onClicked : stackView.push(fifthPage)
            btnText : "Очень высокая активность"
            Material.background: Material.Grey
            width : 500
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