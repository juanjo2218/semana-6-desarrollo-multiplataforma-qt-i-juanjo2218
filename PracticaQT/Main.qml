import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls

Window {
    id: window
    width: 750
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        id: row
        width: 181 // Ancho fijo de la columna
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0 // Espacio constante entre los botones

        MyButton {
            id: button1
            textbut: "Elementos"
            width: 150 // Tamaño fijo
            height: 50 // Tamaño fijo
            index: 0
            onClicked: {
                idstacklayout.currentIndex = index
            }
        }

        MyButton {
            id: button2
            textbut: "Edicion"
            width: 150 // Tamaño fijo
            height: 50 // Tamaño fijo
            index: 1
            onClicked: {
                idstacklayout.currentIndex = index
            }
        }

        MyButton {
            id: button3
            textbut: "Usuarios"
            width: 150 // Tamaño fijo
            height: 50 // Tamaño fijo
            index: 2
            onClicked: {
                idstacklayout.currentIndex = index
            }
        }

        MyButton {
            id: button4
            textbut: "Configuracion"
            width: 150 // Tamaño fijo
            height: 50 // Tamaño fijo
            index: 3
            onClicked: {
                idstacklayout.currentIndex = index
            }
        }
    }

    StackLayout {
        id: idstacklayout
        anchors.left: row.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        currentIndex: 0

        Item {
            id: _item
            ColumnLayout {
                id: columnLayout
                width: parent.width
                height: parent.height
                anchors.fill: parent
                RowLayout
                {
                    width: parent.width

                    anchors.top: parent.top
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBaseline
                    Text {
                        id: _text
                        text: qsTr("Elementos")
                        font.pixelSize: 33
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    }
                }


                GridLayout {
                    id: gridLayout
                    anchors.fill: parent
                    rowSpacing: 25
                    columnSpacing: 15
                    anchors.top: parent.top
                    anchors.topMargin: 81
                    anchors.bottomMargin: 81
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    columns: 3
                    rows: 3

                    Repeater {
                        model: 7
                        MyElement {
                            Layout.fillWidth: true       // Ocupa todo el ancho disponible dentro de la celda
                            Layout.fillHeight: true      // Ocupa toda la altura disponible dentro de la celda
                            anchors.margins: 5          // Margen de los elementos para no ocupar completamente la celda
                        }
                    }
                }
            }

            RoundButton {
                id: roundButton
                text: "+"
                width: 40
                height: 40
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.margins: 10
            }
        }

        Item {
            ColumnLayout {
                id: columnLayout2
                width: parent.width
                height: parent.height
                anchors.fill: parent

                Text {
                    id: _text2
                    text: qsTr("Edicion")
                    font.pixelSize: 33
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }
        }

        Item {
            ColumnLayout {
                id: columnLayout3
                width: parent.width
                height: parent.height
                anchors.fill: parent

                Text {
                    id: _text3
                    text: qsTr("Usuarios")
                    font.pixelSize: 33
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }
        }

        Item {
            ColumnLayout {
                id: columnLayout4
                width: parent.width
                height: parent.height
                anchors.fill: parent

                Text {
                    id: _text4
                    text: qsTr("Configuracion")
                    font.pixelSize: 33
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }
        }
    }
}
