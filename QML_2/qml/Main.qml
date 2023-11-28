// Main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 375
    height: 812
    title: "task_2"

    ColumnLayout {
        anchors.fill: parent

        ToolBar {
            height: 48
            Layout.fillWidth: true

            RowLayout {
                anchors.fill: parent
                Header {}
            }
        }

        Content {}

        BottomNavigationBar {}
    }
}
