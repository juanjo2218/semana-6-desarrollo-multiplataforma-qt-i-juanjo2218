import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 110
    height: 90
    color: "transparent"

    Text {
        id: title
        width: 38
        height: 19
        text: "Elemento"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10
        font.pixelSize: 14
    }

    Rectangle {
        id: rectangle
        width: 88
        height: 53
        color: "#959595"
        radius: 9
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: title.bottom
        anchors.topMargin: 6
        anchors.horizontalCenterOffset: 8
    }
}
