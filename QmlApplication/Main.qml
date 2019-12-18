import QtQuick 2.7
import QtQuick.Layouts 1.7
import QtQuick.Controls 2.3
//import QtQuick.Controls 1.4 as Ctrl


ApplicationWindow {
    id: window
    width: 800
    height: 600
    visible: true
    title: "Chat"

    Ctrl.SplitView {
//    ColumnLayout {
        id: splitView
        anchors.fill: parent

        Rectangle {
            id: chatsMenu
            width: 300
            color: "#8f8f8f"
            visible: true
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            RowLayout {
                id: chatsMenuLayout
                opacity: 0
                anchors.fill: parent
                visible: true

                ColumnLayout {
                    id: columnLayout
                    width: 300
                    height: 70
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                    TextField {
                        id: searchField
                        width: 150
                        text: qsTr("Text Field")
                        z: 0
                        placeholderText: "Search"
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    }

                    Button {
                        id: searchButton
                        text: qsTr("Button")
                        transformOrigin: Item.Center
                        Layout.fillWidth: false
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    }
                }

                ListView {
                    id: listView
                    x: 0
                    y: 0
                    width: 110
                    height: 160
                    model: ListModel {
                        ListElement {
                            name: "Grey"
                            colorCode: "grey"
                        }

                        ListElement {
                            name: "Red"
                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                    }
                    delegate: Item {
                        x: 5
                        width: 80
                        height: 40
                        Row {
                            id: row1
                            spacing: 10
                            Rectangle {
                                width: 40
                                height: 40
                                color: colorCode
                            }

                            Text {
                                text: name
                                font.bold: true
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }
                    }
                }

                Rectangle {
                    id: rectangle
                    width: 200
                    height: 200
                    color: "#d91414"
                    z: 0
                    opacity: 1
                    clip: false
                }
            }

        }

        Rectangle {
            id: chatWindow
            width: 200
            height: 200
            color: "#545454"

            RowLayout {
                id: chatWindowLayout
                x: 300
                y: 0
                width: 500
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
            }
        }
    }
}
