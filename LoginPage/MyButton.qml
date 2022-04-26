import QtQuick 2.0

Rectangle {
     id:root
      width:120
      height: 40
      radius: 20
      color: "mediumturquoise"
      border.width:2
      border.color: "white"
      property string bname: submit
      signal sendinfo(string info)
      Text{
          anchors.centerIn: parent
          text:root.bname
          color: "white"
          font.pixelSize: 20
      }
      MouseArea{
          anchors.fill: parent
          onClicked: {
              console.log(root.bname+"button clicked")
              sendinfo(root.bname)
          }
      }
}
