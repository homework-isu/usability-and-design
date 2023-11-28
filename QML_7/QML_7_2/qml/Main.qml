import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Password Entry"

    property string password: ""

    Rectangle {
        width: 400
        height: 600
        color: "#f5f5f5"
        anchors.centerIn: parent

        ColumnLayout {
            spacing: 10
            width: parent.width
            height: parent.height

            Text {
                text: "Enter your password:"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
            }

            Rectangle {
                id: passwordFieldContainer
                color: "#f5f5f5"
                width: parent.width
                height: 50
                Layout.alignment: Qt.AlignCenter

                Row {
                    spacing: 6
                    anchors.centerIn: parent

                    Repeater {
                        model: 6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignCenter
                            color: index < password.length ? "black" : "light grey"
                        }
                    }
                }
            }

            GridLayout {
                id: keypad
                rows: 4
                columns: 3
                width: parent.width
                Layout.alignment: Qt.AlignCenter
                anchors.verticalCenter: parent.verticalCenter

                Button {
                    text: "1"
                    onClicked: password += "1"
                }

                Button {
                    text: "2"
                    onClicked: password += "2"
                }

                Button {
                    text: "3"
                    onClicked: password += "3"
                }

                Button {
                    text: "4"
                    onClicked: password += "4"
                }

                Button {
                    text: "5"
                    onClicked: password += "5"
                }

                Button {
                    text: "6"
                    onClicked: password += "6"
                }

                Button {
                    text: "7"
                    onClicked: password += "7"
                }

                Button {
                    text: "8"
                    onClicked: password += "8"
                }

                Button {
                    text: "9"
                    onClicked: password += "9"
                }

                Button {
                    text: " "
                }

                Button {
                    text: "0"
                    onClicked: password += "0"
                }

                Button {
                    text: "Clear"
                    onClicked: password = ""
                }

                Button {
                    text: "Log in"
                }
            }
        }
    }
}
