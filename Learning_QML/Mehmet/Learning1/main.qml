import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3

Window {
    id: window
    width: 1024
    height: 768
    visible: true
    title: qsTr("Project 0")

    Rectangle {
        id: rectangle
        color: "#151312"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: rectangle3
            y: 674
            height: 94
            color: "#221f2b"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }

        Rectangle {
            id: rectangle4
            x: 930
            width: 94
            color: "#221f2b"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rectangle5
            x: 333
            y: 284
            width: 378
            height: 180
            color: "#2f2f30"
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#473b7b"
                }

                GradientStop {
                    position: 0.51
                    color: "#3584a7"
                }

                GradientStop {
                    position: 1
                    color: "#30d2be"
                }
                orientation: Gradient.Vertical
            }

            Text {
                id: textinput
                x: 121
                y: 19
                color: "#f67904"
                text: qsTr("0.0")
                font.pixelSize: 100
             Text {
                 x: 130
                 y: 0
                 color: "#f67904"
                 text: qsTr("°")
                 font.pixelSize: 100
             }
            }

            BorderImage {
                id: borderImage
                x: 299
                y: 66
                width: 71
                height: 49
                source: "images/row-1-column-1.png"
                layer.mipmap: false
            }

            BorderImage {
                id: borderImage1
                x: 18
                y: 66
                width: 71
                height: 49
                source: "images/row-1-column-2.png"
            }
        }
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
    D{i:0;formeditorZoom:0.75}D{i:2}D{i:3}D{i:14}
}
##^##*/
