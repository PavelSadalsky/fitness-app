import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

DefaultButton{
    onClicked : stackView.pop()
    btnText : "Назад"
    textSize : 12
    Material.background: "#53c07f"
    width : 100
    height : 40
    anchors{
        bottom : parent.bottom
        right : parent.right
        margins : 20
    }
}