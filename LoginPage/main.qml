import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.4
import QtLocation 5.15
Window {
    width: 600
    height: 480
    visible: true
    title: qsTr("Hello World")
    Image {
        id: img1
        width: parent.width
        height: parent.height
        source: "Login.jpg"
        Grid{
            spacing:10
            anchors.centerIn: parent
            anchors.fill: parent
            Text {
                id: header
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("USER LOGIN PAGE")
//                anchors.top: parent.top
//                anchors.topMargin: 50
                //            anchors.left: parent.left
                //            anchors.leftMargin: 260
                font.pixelSize: 30
                font.weight: Font.Bold
                font.wordSpacing: 10
                color: "white"
            }

           Row {
                id: it1
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: header.bottom
                anchors.topMargin: 50
                //            anchors.left: parent.left
                //            anchors.leftMargin: 260

                    Image {
                        id: userimg
//                        anchors.right: user.left
//                        anchors.rightMargin: 10
                        source:"usericon.png"
                    }
                    TextField{
                        id:user
                        height:50
                        width: 300
                        placeholderText: "User Name"
                    }

            }
            Row{
                id: it2
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: it1.bottom
                anchors.topMargin: 50
                //            anchors.left: parent.left
                //            anchors.leftMargin: 260
                Image {
                    id: passimg
//                    anchors.right: pass.left
//                    anchors.rightMargin: 10
                    source: "password.png"
                }
                TextField{
                    id:pass
                    height:50
                    width: 300
                    placeholderText: "Password"
                    echoMode:TextInput.Password
                    textColor: "black"
                    maximumLength:16
                }

            }
            Row{
                id:row
                spacing:40
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: it2.bottom
                anchors.topMargin: 50
                //            anchors.left: parent.left
                //            anchors.leftMargin: 270

                MyButton{
                    id:b1
                    bname: "Submit"
                    onSendinfo: {
                        console.log("user name="+user.text)
                        console.log("password="+pass.text)
                    }
                }
                MyButton{
                    id:b2
                    bname: "Clear"
                    onSendinfo: {
                        user.undo();
                        pass.undo();
                    }
                }
            }
        }
    }
}
