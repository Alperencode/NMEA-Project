import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3

Window {
    width: 1024
    height: 768
    visible: true
    title: qsTr("Project 0")

    Rectangle {
        id: rectangle
        color: "#151313"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
    }

        Rectangle {
            id: rectangle1
            x: 0
            width: 94
            color: "#221f2b"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rectangle2
            y: 0
            height: 94
            color: "#221f2b"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
