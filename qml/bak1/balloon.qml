import Qt 4.7
import QtQuick 1.1

import "module1.js" as Module1

Image {
    id: balloon
    opacity: 0.9
    source: "hren2.png"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            appWindow.incrClicks();
            balloon.destroy();
        }
    }
}
