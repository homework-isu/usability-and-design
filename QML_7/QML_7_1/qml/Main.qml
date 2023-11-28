import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Password Entry"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#f5f5f5"

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 10

            TextField {
                id: usernameField
                placeholderText: "Username"
                width: 200
                height: 30
            }

            TextField {
                id: passwordField
                placeholderText: "Password"
                width: 200
                height: 30
                echoMode: TextInput.Password
            }

            RowLayout {
                Button {
                    text: "Log in"
                    onClicked: {
                        console.log("Username: " + usernameField.text);
                        console.log("Password: " + passwordField.text);
                    }
                }

                Button {
                    text: "Clear"
                    onClicked: {
                        usernameField.text = "";
                        passwordField.text = "";
                    }
                }
            }
        }
    }
}
