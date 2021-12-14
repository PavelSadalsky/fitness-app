import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Component {
    Rectangle {
        Label {
            id : weightLabel
            text : "Каким весом вы\nхотели бы обладать?"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize : 48
            color : "#3d3c3d"
            font.bold : true

            anchors{
                horizontalCenter: parent.horizontalCenter
                top : parent.top
                topMargin : 200
            }
        }
        DefaultField{
            id : weightField
            validator: IntValidator {bottom: 0; top: 999}
        }
        DefaultButton{
            btnText : "Продолжить"
            onClicked : {
                stackView.push(thirdPage)
                service.set_desired_weight(weightField.text)
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