import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

DefaultButton{
    onClicked : stackView.pop()
    btnText : "Начало"
    textSize : 12
    Material.background: Material.LightGreen
    width : 100
    height : 40
    anchors{
        bottom : parent.bottom
        left : parent.left
        margins : 10
    }
}