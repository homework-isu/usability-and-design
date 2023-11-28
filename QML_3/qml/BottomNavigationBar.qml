// BottomNavigationBar.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Rectangle {
    id: bottomNavigationBar
    height: 48
    Layout.fillWidth: true
    color: "#dadada"

    signal contentChanged(string newText)
    signal headerChanged(string newText)

    RowLayout {
        anchors.fill: parent
        spacing: 4

        Repeater {
            model: 3
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "#d3d3d3"
                border.color: "#c0c0c0"
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: index + 1
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        bottomNavigationBar.contentChanged("Button " + (index + 1) + " Content");
                        bottomNavigationBar.headerChanged("Button " + (index + 1) + " Header");
                    }
                }
            }
        }
    }
}
