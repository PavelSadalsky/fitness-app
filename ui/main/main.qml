import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

Window {
    id: main
    title : "Fitness"
    width: 800; height: 800
    visible: true
    color: "white"
    minimumWidth : 600
    minimumHeight : 600
    Material.theme : Material.Light
    Material.accent : Material.LightGreen

    FirstPage { id : firstPage }
    SecondPage { id : secondPage }
    ThirdPage { id : thirdPage}
    FourthPage { id : fourthPage}
    StackView {
        id : stackView
        initialItem : firstPage
        anchors.fill : parent
    }
}