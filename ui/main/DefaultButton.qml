import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Button{
    property string btnText: ""
    contentItem : Text{
        text : btnText
        color : "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize : 22
        font.bold : true
    }
    width : 200
    height : 80
}