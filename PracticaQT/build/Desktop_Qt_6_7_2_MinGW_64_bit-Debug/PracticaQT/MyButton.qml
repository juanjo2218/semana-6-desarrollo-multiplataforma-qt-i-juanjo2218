import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: 250
    height: 50
    color: "#646464"
    radius: 8
    border.color: "#000000"
    border.width: 3

    property int index: 0 // Índice o valor que quieres enviar
    property string textbut: "" // Texto del botón

    signal clicked(int index)

    Text {
        id: textobut
        text: textbut
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            rectangle.clicked(rectangle.index) // Emite la señal con el índice
        }
    }
}

