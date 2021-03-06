import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.1
import "GameLogic.js" as Logic

ApplicationWindow {
    id: appWindow
    title: "Mahjongg"
    width: layout.implicitWidth
    height: layout.implicitHeight

    //@bug Menu is not displayed? Why?
    MenuBar {
        Menu {
            title: "File"
            MenuItem {
                text: "New"
                onTriggered: {
                }
            }
            MenuItem {
                text: "Quit"
                onTriggered: appWindow.close();
            }
        }
        Menu {
            title: "About"
            MenuItem {
                text: "About"
                onTriggered: {

                }
            }
        }
    }
    ColumnLayout {
        id:layout
        anchors.fill:parent
        Button {
            id: newGame
            text: "New Game"
            onClicked: {
                Logic.initGamePieces(gameBoard)
                Logic.createBoard()
            }
        }
//        Button {
//            id: test
//            text: "Test"
//            onClicked: {
//                gameBoard.gameState=(gameBoard.gameState+1)%3
//            }
//        }

        Rectangle {
            color: "green"
            GameBoard {
                id: gameBoard
                anchors.centerIn: parent
            }
            Layout.minimumWidth: gameBoard.implicitWidth
            Layout.minimumHeight: gameBoard.implicitHeight
            Layout.fillWidth: true
            Layout.fillHeight: true
            //implicitHeight: gameBoard.implicitHeight
            //implicitWidth: gameBoard.implicitWidth
        }


    }

}
