import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 375
    height: 812
    title: "task_2"

    property int selectedButton: -1

    ColumnLayout {
        id: root
        anchors.fill: parent
        state: "button1"

        ToolBar {
            height: 48
            Layout.fillWidth: true
            background: Rectangle {
                id: headerRectangle
                color: "#dcdcdc"
            }

            RowLayout {
                anchors.fill: parent
                Rectangle {
                    id: arrowback
                    color: headerRectangle.color
                    width: parent.width * 0.15
                    height: parent.height
                    opacity: 0
                    Text {
                        text: "<-"
                        anchors.centerIn: parent
                        color: "black"
                    }
                }

                Rectangle {
                    Layout.fillWidth: true

                    Text {
                        id: headerText
                        text: "Header"
                        color: root.state === "button1" ? "white" : "black"
                        anchors.centerIn: parent
                    }
                }
            }
        }

        GridLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            columns: 1
            anchors.margins: 10

            Rectangle {
                id: contentRectangle
                Layout.fillWidth: true
                Layout.fillHeight: true
                border.color: "#dadada"
                border.width: 1
                color: "white"

                Text {
                    id: contentText
                    text: "Content"
                    anchors.centerIn: parent
                }
            }
        }

        Rectangle {
            id: bottomNavigationBar
            height: 48
            Layout.fillWidth: true
            color: "#dadada"

            RowLayout {
                anchors.fill: parent
                spacing: 4

                Repeater {
                    model: 3
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: selectedButton === index ? "#d3d3d3" : "#c0c0c0"
                        border.color: "#c0c0c0"
                        border.width: 1

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                if (root.state !== "button_" + (index + 1)) {
                                    root.state = "button_" + (index + 1);
                                    selectedButton = index;
                                }
                            }
                        }

                        Text {
                            id: buttonText
                            anchors.centerIn: parent
                            text: index + 1
                            color: selectedButton === index ? "black" : "gray"
                        }
                    }
                }
            }
        }

        states: [
            State {
                name: "button_1"
                PropertyChanges { target: headerRectangle; color: "red"; }
                PropertyChanges { target: headerText; text: "Button 1 clicked"; }
                PropertyChanges { target: buttonText; color: "black"; }

                PropertyChanges { target: contentRectangle; color: "red"; }
                PropertyChanges { target: contentText; text: "Content for Button 1"; }

                PropertyChanges { target: arrowback; opacity: 0; }
            },
            State {
                name: "button_2"
                PropertyChanges { target: headerRectangle; color: "lightgreen"; }
                PropertyChanges { target: headerText; text: "Button 2 clicked"; }
                PropertyChanges { target: buttonText; color: "black"; }

                PropertyChanges { target: contentRectangle; color: "lightgreen"; }
                PropertyChanges { target: contentText; text: "Content for Button 2"; }

                PropertyChanges { target: arrowback; opacity: 1; }
            },
            State {
                name: "button_3"
                PropertyChanges { target: headerRectangle; color: "lightblue"; }
                PropertyChanges { target: headerText; text: "Button 3 clicked"; }
                PropertyChanges { target: buttonText; color: "black"; }

                PropertyChanges { target: contentRectangle; color: "lightblue"; }
                PropertyChanges { target: contentText; text: "Content for Button 3"; }

                PropertyChanges { target: arrowback; opacity: 1; }
            }
        ]

        transitions: [
            Transition {
                ColorAnimation { properties: "color"; duration: 500 }
            }
        ]
    }
}
