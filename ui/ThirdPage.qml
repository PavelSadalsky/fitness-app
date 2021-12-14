import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
        Label {
            id : infoLabel
            text : "Введите ваши параметры\nна сегодняшний день?"
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
        Label {
            id : ageLabel
            text : "Возраст"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors{
                left : ageField.left
                top : infoLabel.bottom
                topMargin : 10
            }
        }
        Label {
            id : heightLabel
            text : "Рост"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors{
                left : heightField.left
                top : ageField.bottom
                topMargin : 10
            }
        }
         Label {
            id : weightLabel
            text : "Вес"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 20
            color : "#3d3c3d"
            font.bold : true

            anchors{
                left : weightField.left
                top : heightField.bottom
                topMargin : 10
            }
        }
        DefaultField{
            id : ageField
            placeholderText: "00 (лет)"
            validator: IntValidator {bottom: 0; top: 99}
            anchors{
                top : ageLabel.bottom
                topMargin : 10
            }
        }
        DefaultField{
            id : heightField
            placeholderText: "00 (см)"
            validator: IntValidator {bottom: 0; top: 999}
            anchors{
                top : heightLabel.bottom
                topMargin : 10
            }
        
        }
        DefaultField{
            id : weightField
            validator: IntValidator {bottom: 0; top: 999}
            anchors{
                top : weightLabel.bottom
                topMargin : 10
            }
        }
        DefaultButton{
            btnText : "Продолжить"
            onClicked : {
                stackView.push(fourthPage)
                service.set_weight(weightField.text)
                service.set_age(ageField.text)
                service.set_height(heightField.text)
            }
            Material.background: Material.Cyan
            anchors{
                top : weightField.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin : 10
            }
        }
        BackButton{}
        HomeButton{}
    }
}