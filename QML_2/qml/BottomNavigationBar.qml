import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

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
                color: "#d3d3d3"
                border.color: "#c0c0c0"
                border.width: 1

                Text {
                    text: (index + 1).toString()
                    anchors.centerIn: parent
                }
            }
        }
    }
}
