import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3

Window {
    id: window

    width: 600
    height: 500
    visible: true
    title: qsTr("GUI")

    Rectangle {
        id: rectangle
        radius: 0
        border.width: 0
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.1; color: "#042191" }
            GradientStop { position: 0.5; color: "#063fd1" }
            GradientStop { position: 0.9; color: "#042191" }
        }

        Rectangle {
            id: box1
            width: 200
            height: 200
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
        }

        Rectangle {
            id: box2
            width: 200
            height: 200
            color: "transparent"
            anchors.left: box1.right
            anchors.top: parent.top
        }

        Rectangle {
            id: box3
            x: 406
            width: 200
            height: 200
            color: "transparent"
            anchors.left: box2.right
            anchors.top: parent.top
        }

        Rectangle {
            id: box4
            width: 200
            height: 150
            color: "transparent"
            anchors.left: parent.left
            anchors.top: box1.bottom
        }

        Rectangle {
            id: box5
            width: 200
            height: 150
            color: "transparent"
            anchors.left: box4.right
            anchors.top: box5.bottom

        }
        Rectangle {
            id: box6
            width: 200
            height: 150
            color: "transparent"
            anchors.left: box5.right
            anchors.top: box3.bottom

        }

        Rectangle {
            id: box7
            width: 200
            height: 150
            color: "transparent"
            anchors.left: parent.left
            anchors.top: box4.bottom

        }
        Rectangle {
            id: box8
            y: 388
            width: 200
            height: 150
            color: "transparent"
            anchors.left: box7.right
            anchors.top: box5.bottom

        }
        Rectangle {
            id: box9
            y: 388
            width: 200
            height: 150
            color: "transparent"
            anchors.left: box8.right
            anchors.top: box6.bottom

        }
    }

}
