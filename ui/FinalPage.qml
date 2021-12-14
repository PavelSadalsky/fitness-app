import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
        Label {
            id : infoLabel
            text : "Результаты анализа данных"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 48
            color : "#3d3c3d"
            font.bold : true

            anchors{
                horizontalCenter: parent.horizontalCenter
                top : parent.top
                topMargin : 20
            }
        }
    Rectangle{
        id : firstBlock
        height : 50
        width : 150
        border.color: "#e2a156"
        border.width: 2
        anchors{
            left : parent.left 
            top : infoLabel.bottom
            topMargin : 30
            leftMargin : 20
        }
        Label {
            id : primer1Label
            text : "2000 (ккал)"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors.centerIn : parent
        }
    }
    Label {
        id : dailyCalorieLabel
        text : "Суточная норма калорий"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true

        anchors{
            horizontalCenter : firstBlock.horizontalCenter
            bottom : firstBlock.top
        }
    }
    Rectangle{
        id : secondBlock
        height : 50
        width : 150
        border.color: "#e2a156"
        border.width: 2
        anchors{
            top : infoLabel.bottom
            topMargin : 30
            horizontalCenter : parent.horizontalCenter
        }
        Label {
            id : primer2Label
            text : "2.4 (литра)"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors.centerIn : parent
        }
    }
    Label {
        id : dailyWaterLabel
        text : "Суточная норма воды"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true

    anchors{
        horizontalCenter : secondBlock.horizontalCenter
        bottom : secondBlock.top
    }
    }
    Rectangle{
        id : thirdBlock
        height : 50
        width : 150
        border.color: "#5ff084"
        border.width: 2
        radius : 5 
        anchors{
            right : parent.right
            top : infoLabel.bottom
            topMargin : 150
            rightMargin : 20
        }
        Label {
            id : primer3Label
            text : "180 (см)"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors.centerIn : parent
        }
    }
    Label {
        id : hLabel
        text : "Рост"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true

        anchors{
            horizontalCenter : thirdBlock.horizontalCenter
            bottom : thirdBlock.top
        }
    }
    Rectangle{
        id : fourthBlock
        height : 50
        width : 150
        border.color: "#5ff084"
        border.width: 2
        radius : 5
        anchors{
            right : parent.right
            top : thirdBlock.bottom
            topMargin : 60
            rightMargin : 20
        }
        Label {
            id : primer4Label
            text : "80 (кг)"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors.centerIn : parent
        }
    }
    Label {
        id : wLabel
        text : "Вес"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true

        anchors{
            horizontalCenter : fourthBlock.horizontalCenter
            bottom : fourthBlock.top
        }
    }  
    Rectangle{
        id : fifthBlock
        height : 50
        width : 150
        border.color: "#5ff084"
        border.width: 2
        radius : 5
        anchors{
            right : parent.right
            top : fourthBlock.bottom
            topMargin : 60
            rightMargin : 20
        }
        Label {
            id : primer5Label
            text : "20 (лет)"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors.centerIn : parent
        }
    }
    Label {
        id : aLabel
        text : "Возраст"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true

        anchors{
            horizontalCenter : fifthBlock.horizontalCenter
            bottom : fifthBlock.top
        }
    }
    Label{
        id : chartLabel
        horizontalAlignment: Text.AlignHCenter
        text : "Прогноз потери веса"
        font.pixelSize : 15
        color : "#3d3c3d"
        font.bold : true
        anchors{
            horizontalCenter : chart.horizontalCenter
            bottom : chart.top
        }
    }
    Image{
        id : chart
        source : "../core/chart.png"
        width : 450
        height : 300
        anchors{
            top : firstBlock.bottom
            topMargin : 50
            leftMargin : 20
            left : parent.left
        }
    }
    Rectangle{
        id : sixthBlock
        height : 130
        border.color: "#e2a156"
        border.width: 2
        color : "#f1d9b3"
        anchors{
            left : parent.left
            right : parent.right
            top : chart.bottom
            topMargin : 80
            leftMargin : 20
            rightMargin : 20
        }
        Label {
            id : primer6Label
            text : "Текущий ИМС\n21.6"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 24
            color : "#3d3c3d"
            font.bold : true

            anchors{
                bottom : sixthBlock.bottom
                horizontalCenter : sixthBlock.horizontalCenter
                bottomMargin : 50
            }
        }
        Label {
            id : primer7Label
            text : "Лишний вес, избыточная масса тела (предожирение)"
            font.pointSize : 16
            anchors{
                bottom : sixthBlock.bottom
                horizontalCenter : sixthBlock.horizontalCenter
                bottomMargin : 20
            }
        }
    }

        HomeButton{}
    }
}