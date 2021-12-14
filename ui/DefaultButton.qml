import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Button{
    property string btnText: ""
    property int textSize : 22
    contentItem : Text{
        text : btnText
        color : "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize : textSize
        font.bold : true
    }
    width : 200
    height : 80
}