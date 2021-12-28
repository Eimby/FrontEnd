import QtQuick
import QtQuick.Controls
import EimbyBin
Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor
    state: "Eng_main"
    AnimatedImage {
        id: animatedImage
        x: 910
        y: 349
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Text {
        id: text1
        width: 1000
        height: 250
        text: qsTr("Please Swipe Your Card \n or Scan Your QR Code")
        font.family: "Arial"
        anchors.verticalCenterOffset: 330
        anchors.horizontalCenterOffset: 0
        font.bold: true
        font.pointSize: 70
        anchors.centerIn: parent
    }

    Button {
        id: chi_eng_trans_button
        x: 1655
        y: 124
        text: qsTr("Button")

        Connections {
            target: chi_eng_trans_button
            onClicked: {
                if (rectangle.state === "Chi_main")
                    rectangle.state = "Eng_main"
                else if (rectangle.state === "Eng_main")
                    rectangle.state = "Chi_main"
            }
        }
    }

    Button {
        id: test_button
        x: 151
        y: 637
        text: qsTr("Button")

        Connections {
            target: test_button
            onClicked: {
                if (rectangle.state === "Chi_main")
                    rectangle.state = "Chi_open"
                else if (rectangle.state === "Eng_main")
                    rectangle.state = "Eng_open"
                else if (rectangle.state === "Eng_open")
                    rectangle.state = "Eng_main"
                else if (rectangle.state === "Chi_open")
                    rectangle.state = "Chi_main"
                else if (rectangle.state === "Eng_count")
                    rectangle.state = "Eng_main"
                else if (rectangle.state === "Chi_count")
                    rectangle.state = "Chi_main"
            }
        }
    }

    Button {
        id: lastbutton
        x: 1637
        y: 637
        text: qsTr("after")

        Connections {
            target: lastbutton
            onClicked:  {
                if (rectangle.state === "Chi_open")
                    rectangle.state = "Chi_count"
                else if (rectangle.state === "Eng_open")
                    rectangle.state = "Eng_count"
            }
        }
    }

    Button {
        id: wrongbutton
        x: 63
        y: 858
        text: "wrong id"
        font.pointSize: 50

        Connections {
            target: wrongbutton
            onClicked: {
                if (rectangle.state === "Chi_main")
                    rectangle.state = "Chi_wrong"
                else if (rectangle.state === "Eng_main")
                    rectangle.state = "Eng_wrong"
                else if (rectangle.state === "Chi_wrong")
                    rectangle.state = "Chi_main"
                else if (rectangle.state === "Eng_wrong")
                    rectangle.state = "Eng_main"
            }
        }
    }

    states: [
        State {
            name: "Eng_main"

            PropertyChanges {
                target: text1
                horizontalAlignment: Text.AlignHCenter
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_normal.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1500
                y: 100
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.pointSize: 70
                font.family: "Arial"
                checked: false
            }

            PropertyChanges {
                target: test_button
                text: qsTr("start test")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: lastbutton
                x: 2022
                y: 725
            }

            PropertyChanges {
                target: wrongbutton
                x: 100
                y: 900
            }
        },
        State {
            name: "Chi_main"

            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("請掃描你的員工證或二維碼")
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 335
                anchors.horizontalCenterOffset: 0
                font.bold: true
                font.family: "Arial"
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_normal.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1500
                y: 100
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: test_button
                text: qsTr("start test")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: lastbutton
                x: 2143
                y: 757
            }

            PropertyChanges {
                target: wrongbutton
                x: 100
                y: 900
            }
        },
        State {
            name: "Chi_open"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("你好， ___，請踏下腳踏並倒入垃圾")
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 0
                font.bold: true
                anchors.verticalCenterOffset: 335
                font.family: "Arial"
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1491
                y: -258
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: test_button
                text: qsTr("back")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: lastbutton
                x: 1625
                y: 592
                font.pointSize: 70
            }

            PropertyChanges {
                target: wrongbutton
                x: 807
                y: 1188
            }
        },
        State {
            name: "Eng_open"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("Hi, ___, Please Step On the Padel \n And Dump Your Garbage")
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 0
                font.bold: true
                anchors.verticalCenterOffset: 335
                font.family: "Arial"
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1476
                y: -242
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: test_button
                text: qsTr("back")
                font.family: "Arial"
                font.pointSize: 70
            }

            PropertyChanges {
                target: lastbutton
                font.pointSize: 70
            }

            PropertyChanges {
                target: wrongbutton
                x: 823
                y: 1182
            }
        },
        State {
            name: "Eng_count"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("You Have Dumped ___ kg")
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 335
                font.family: "Arial"
                font.bold: true
                anchors.horizontalCenterOffset: 0
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1476
                y: -242
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: test_button
                text: qsTr("back main")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: lastbutton
                x: 2046
                y: 666
            }

            PropertyChanges {
                target: wrongbutton
                x: 823
                y: 1173
            }
        },
        State {
            name: "Chi_count"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("你共倒了____kg垃圾")
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: 335
                font.family: "Arial"
                font.bold: true
                anchors.horizontalCenterOffset: 0
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1476
                y: -242
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: test_button
                text: qsTr("back main")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: lastbutton
                x: 2082
                y: 675
            }

            PropertyChanges {
                target: wrongbutton
                x: 822
                y: 1207
            }
        },
        State {
            name: "Chi_wrong"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("未能識別，請重試")
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 335
                font.bold: true
                font.family: "Arial"
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_NOT_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1476
                y: "-242"
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: test_button
                x: -367
                y: 652
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: lastbutton
                x: 2131
                y: 807
            }

            PropertyChanges {
                target: wrongbutton
                x: 823
                y: 924
                text: "back"
            }
        },
        State {
            name: "Eng_wrong"
            PropertyChanges {
                target: text1
                width: 1000
                text: qsTr("Can't Authorize Your ID, Please Try Again")
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 335
                font.bold: true
                font.family: "Arial"
            }

            PropertyChanges {
                target: animatedImage
                x: 257
                y: 0
                width: 1407
                height: 797
                source: "image/pacbot_NOT_detected.gif"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }

            PropertyChanges {
                target: chi_eng_trans_button
                x: 1476
                y: "-242"
                width: 330
                height: 120
                text: qsTr("中/Eng")
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: test_button
                x: -331
                y: 619
                font.pointSize: 70
                font.family: "Arial"
            }

            PropertyChanges {
                target: lastbutton
                x: 2131
                y: 807
            }

            PropertyChanges {
                target: wrongbutton
                x: 822
                y: 927
                text: "back"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:1}D{i:2}D{i:4}D{i:3}D{i:6}D{i:5}D{i:8}D{i:7}D{i:10}
D{i:9}
}
##^##*/

