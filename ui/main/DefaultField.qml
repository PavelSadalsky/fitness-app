import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

TextField { 
        id : textField
        placeholderText: "00 (кг)"
        font.pointSize : 32
        background: Rectangle {
            radius: 7
            implicitWidth: 100
            implicitHeight: 24
            border.color: "deepskyblue"
            border.width: 2
        }
        width : 200
        height : 80
        color : "#565656"
        rightInset : 4
        horizontalAlignment: TextInput.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        Material.accent : Material.Blue
        cursorVisible : true
        anchors{
            top : weightLabel.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin : 10
        }  
    }