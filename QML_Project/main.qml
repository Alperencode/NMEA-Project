import QtQuick
import QtQuick.Window
import QtQuick.Controls 6.3

Window {
    width: 600
    height: 500
    visible: true
    title: qsTr("QML-Project")

    Rectangle {
        id: background
        color: "#4872b6"
        anchors.fill: parent

        Rectangle {
            id: row1_box1
            width: 200
            height: 200
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: parent.left
            anchors.top: parent.top

            Text {
                id: heading_text
                color: "#ffffff"
                text: qsTr("HEADING")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.family: "Times New Roman"
                font.pixelSize: 24
            }
            Text {
                id: heading_value
                color: "#ffffff"
                text: qsTr("0.0")
                anchors.top: heading_text.bottom
                anchors.horizontalCenter: heading_text.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 24
                Text {
                    id: heading_degree
                    color: "#ffffff"
                    text: qsTr("°")
                    anchors.left: parent.right
                    horizontalAlignment: Text.AlignHCenter
                    anchors.leftMargin: 1.5
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: 24
                }
            }

        }

        Rectangle {
            id: row1_box2
            width: 200
            height: 200
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row1_box1.right
            anchors.top: parent.top

            Text {
                id: air_temperature_text
                text: qsTr("Air Temperature")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 16
                font.family: "Times New Roman"
                anchors.topMargin: 20
                anchors.leftMargin: 70
                Text {
                    id: air_temperature_value
                    text: qsTr("18.0")
                    anchors.right: parent.right
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 26
                    anchors.rightMargin: 40
                    anchors.topMargin: 20
                    Text {
                        id: air_temperature_degree
                        color: "#ffffff"
                        text: qsTr("°C")
                        anchors.left: parent.right
                        anchors.top: parent.top
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Arial"
                        anchors.leftMargin: 0
                        anchors.topMargin: 5
                        font.bold: false
                        font.pixelSize: 26
                    }
                }
                Image {
                    id: air_temperature_image
                    width: 50
                    height: 50
                    anchors.right: parent.right
                    anchors.top: parent.top
                    source: "images/cloud.png"
                    anchors.topMargin: 10
                    anchors.rightMargin: 100
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: air_pressure_text
                text: qsTr("Air Pressure")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                font.underline: true
                anchors.leftMargin: 5
                anchors.topMargin: 125
                Text {
                    id: air_pressure_value
                    text: qsTr("1050.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    anchors.topMargin: 20
                    Text {
                        id: air_pressure_mbar
                        text: qsTr("mBar")
                        anchors.top: parent.top
                        color: "#ffffff"
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.family: "Times New Roman"
                        anchors.topMargin: 20
                    }
                }
                Image {
                    id: air_pressure_image
                    width: 35
                    height: 35
                    anchors.bottom: parent.bottom
                    source: "images/pressure.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 20
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
            }

            Text {
                id: humidity_text
                text: qsTr("Humidity")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                font.underline: true
                anchors.leftMargin: 75
                anchors.topMargin: 125
                Text {
                    id: humidity_value
                    text: qsTr("56.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    anchors.topMargin: 20
                    Text {
                        id: humidity_percentage
                        text: qsTr("%")
                        anchors.top: parent.top
                        color: "#ffffff"
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.family: "Times New Roman"
                        anchors.topMargin: 20
                    }
                }
                Image {
                    id: humidity_image
                    width: 35
                    height: 35
                    anchors.bottom: parent.bottom
                    source: "images/humidity.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 20
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
            }

            Text {
                id: water_temp_text
                text: qsTr("Water Temp")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                font.underline: true
                anchors.leftMargin: 130
                anchors.topMargin: 125
                Text {
                    id: water_temp_value
                    text: qsTr("9.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    anchors.topMargin: 20
                    Text {
                        id: water_temp_degree
                        text: qsTr("°C")
                        anchors.top: parent.top
                        color: "#ffffff"
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.family: "Times New Roman"
                        anchors.topMargin: 20
                    }
                }
                Image {
                    id: water_temp_image
                    width: 35
                    height: 35
                    anchors.bottom: parent.bottom
                    source: "images/water_temp.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 20
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
            }
        }

        Rectangle {
            id: row1_box3
            width: 200
            height: 200
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row1_box2.right
            anchors.top: parent.top

            Text {
                id: cog_text
                text: qsTr("COG")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: -35
                font.bold: false
                color: "#ffffff"
                font.pixelSize: 24
                font.family: "Times New Roman"
                Text {
                    id: cog_value
                    color: "#ffffff"
                    text: qsTr("0.0")
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 70
                    font.bold: false
                    font.family: "Times New Roman"
                    font.pixelSize: 24
                }
            }
            Image {
                id: compass_image
                source: "images/compass.png"
                width: 30
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                mipmap: true
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: row2_box1
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: parent.left
            anchors.top: row1_box1.bottom

            Text {
                id: speed_over_ground_text
                text: qsTr("SPEED OVER GROUND")
                anchors.left: parent.left
                anchors.top: parent.top
                color: "#ffffff"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 3
                anchors.topMargin: 4
                font.bold: false
            }
            Text {
                id: speed_over_ground_value
                color: "#ffffff"
                text: qsTr("0.0")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Segoe UI"
                font.bold: false
                font.pixelSize: 42
                Text {
                    id: speed_over_ground_kts
                    color: "#ffffff"
                    text: qsTr("kts")
                    anchors.left: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 25
                    horizontalAlignment: Text.AlignHCenter
                    anchors.leftMargin: 3
                    font.bold: false
                    font.family: "Times New Roman"
                    font.pixelSize: 24
                }
            }
        }

        Rectangle {
            id: row2_box2
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row2_box1.right
            anchors.top: row1_box2.bottom

            Text {
                id: roll_text
                text: qsTr("ROLL")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 30
                anchors.topMargin: 15
                Text {
                    id: roll_value
                    color: "#ffffff"
                    text: qsTr("0.00")
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 50
                    font.pointSize: 16
                    Text {
                        id: roll_degree
                        color: "#ffffff"
                        text: qsTr("°")
                        anchors.left: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 1.5
                        font.bold: true
                        font.pixelSize: 18
                    }
                }
            }

            Text {
                id: pitch_text
                text: qsTr("PITCH")
                color: "#ffffff"
                anchors.right: parent.right
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.rightMargin: 30
                anchors.topMargin: 15
                Text {
                    id: pitch_value
                    color: "#ffffff"
                    text: qsTr("0.00")
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenterOffset: 0
                    anchors.topMargin: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 16
                    Text {
                        id: pitch_degree
                        color: "#ffffff"
                        text: qsTr("°")
                        anchors.left: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 1.5
                        font.bold: true
                        font.pixelSize: 18
                    }
                }
            }

            Rectangle {
                id: brace1
                y: 43
                width: 1
                height: 70
                color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 10
            }
        }

        Rectangle {
            id: row2_box3
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row2_box2.right
            anchors.top: row1_box3.bottom

            Text {
                id: relative_wind_text
                text: qsTr("RELATIVE WIND")
                anchors.left: parent.left
                anchors.top: parent.top
                color: "#ffffff"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 3
                anchors.topMargin: 4
                font.bold: false
            }
            Text {
                id: direction_text
                text: qsTr("Direction")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.underline: false
                font.family: "Times New Roman"
                anchors.leftMargin: 30
                anchors.topMargin: 35
                Text {
                    id: direction_value
                    text: qsTr("0.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 26
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 35
                    Text {
                        id: direction_degree
                        color: "#ffffff"
                        text: qsTr("°")
                        anchors.left: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 1.5
                        font.bold: true
                        font.family: "Times New Roman"
                        font.pixelSize: 20
                    }
                }
            }

            Text {
                id: speed_text
                text: qsTr("Speed")
                color: "#ffffff"
                anchors.right: parent.right
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.underline: false
                font.family: "Times New Roman"
                anchors.rightMargin: 30
                anchors.topMargin: 35
                Text {
                    id: speed_value
                    text: qsTr("0.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 26
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 35
                    Text {
                        id: speed_kts
                        color: "#ffffff"
                        text: qsTr("kts")
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 15
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 3
                        font.bold: false
                        font.family: "Times New Roman"
                        font.pixelSize: 16
                    }
                }
            }

            Rectangle {
                id: brace2
                width: 1
                height: 70
                color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 15
            }
        }

        Rectangle {
            id: row3_box1
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: parent.left
            anchors.top: row2_box1.bottom

            Text {
                id: set_and_drift_text
                text: qsTr("SET AND DRIFT")
                anchors.left: parent.left
                anchors.top: parent.top
                color: "#ffffff"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 3
                anchors.topMargin: 4
                font.bold: false
            }

            Text {
                id: set_text
                text: qsTr("SET")
                color: "#ffffff"
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.underline: false
                font.family: "Times New Roman"
                anchors.leftMargin: 30
                anchors.topMargin: 35
                Text {
                    id: set_value
                    text: qsTr("0.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 26
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 35
                    Text {
                        id: set_degree
                        color: "#ffffff"
                        text: qsTr("°")
                        anchors.left: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 1.5
                        font.bold: true
                        font.family: "Times New Roman"
                        font.pixelSize: 20
                    }
                }
            }

            Text {
                id: drift_text
                text: qsTr("DRIFT")
                color: "#ffffff"
                anchors.right: parent.right
                anchors.top: parent.top
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.underline: false
                font.family: "Times New Roman"
                anchors.rightMargin: 30
                anchors.topMargin: 35
                Text {
                    id: drift_value
                    text: qsTr("0.0")
                    color: "#ffffff"
                    anchors.top: parent.top
                    font.pixelSize: 26
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 35
                    Text {
                        id: drift_kts
                        color: "#ffffff"
                        text: qsTr("kts")
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 15
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 3
                        font.bold: false
                        font.family: "Times New Roman"
                        font.pixelSize: 16
                    }
                }
            }

            Rectangle {
                id: brace3
                width: 1
                height: 70
                color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 15
            }
        }

        Rectangle {
            id: row3_box2
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row3_box1.right
            anchors.top: row2_box2.bottom

            Text {
                id: rot_text
                text: qsTr("ROT")
                anchors.left: parent.left
                anchors.top: parent.top
                color: "#ffffff"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 3
                anchors.topMargin: 4
                font.bold: false
            }
            Text {
                id: rot_value
                color: "#ffffff"
                text: qsTr("0.0")
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pixelSize: 36
                Text {
                    id: rot_degree
                    color: "#ffffff"
                    text: qsTr("°")
                    anchors.left: parent.right
                    horizontalAlignment: Text.AlignHCenter
                    anchors.leftMargin: 1.5
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: 36
                }
                Image {
                    id: right_arrow_image
                    height: 40
                    width: 40
                    anchors.left: parent.right
                    anchors.top: parent.top
                    source: "images/right_arrow.png"
                    anchors.topMargin: 10
                    anchors.leftMargin: 20
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
                Image {
                    width: 40
                    height: 40
                    anchors.right: parent.left
                    anchors.top: parent.top
                    anchors.rightMargin: 13
                    anchors.topMargin: 8
                    source: "images/left_arrow.png"
                    fillMode: Image.PreserveAspectFit
                    mipmap: true
                }
            }

        }
        Rectangle {
            id: row3_box3
            width: 200
            height: 150
            color: "transparent"
            border.color: "#30ffffff"
            anchors.left: row3_box2.right
            anchors.top: row2_box3.bottom

            Text {
                id: depth_text
                text: qsTr("DEPTH")
                anchors.left: parent.left
                anchors.top: parent.top
                color: "#ffffff"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                anchors.leftMargin: 3
                anchors.topMargin: 4
                font.bold: false
            }
            Text {
                id: depth_value
                color: "#ffffff"
                text: qsTr("0.0")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Segoe UI"
                font.bold: false
                font.pixelSize: 42
                Text {
                    id: depth_m
                    color: "#ffffff"
                    text: qsTr("m")
                    anchors.left: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 25
                    horizontalAlignment: Text.AlignHCenter
                    anchors.leftMargin: 3
                    font.bold: false
                    font.family: "Times New Roman"
                    font.pixelSize: 24
                }
            }
        }   
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:23}D{i:39}D{i:48}D{i:61}D{i:57}D{i:63}
}
##^##*/
