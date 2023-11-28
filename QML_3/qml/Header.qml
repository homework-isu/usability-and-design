import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Rectangle {
    property string headerText: "Header"

    Layout.fillWidth: true
    color: "#dcdcdc"

    Text {
        text: headerText
        anchors.centerIn: parent
    }
}
