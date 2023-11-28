// Main.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 375
    height: 812
    title: "task_3"

    property int selectedButton: -1

    ColumnLayout {
        anchors.fill: parent

        ToolBar {
            height: 48
            Layout.fillWidth: true

            RowLayout {
                anchors.fill: parent
                Header {
                    id: headerItem
                }
            }
        }

        Content {
            id: contentItem
        }

        BottomNavigationBar {
            onContentChanged: {
                contentItem.contentText = newText;
            }
            onHeaderChanged: {
                headerItem.headerText = newText;
            }
        }
    }
}
