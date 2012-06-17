import QtQuick 1.1
import "module1.js" as Module1

Rectangle {
    id: appWindow
    width: 800
    height: 600
    color: "black"
    property int clicks: 0
    property int apm: 0

    function incrClicks() {
        clicks++;
        apm = 60*clicks/globalTimer.currTime;
        output.text = apm;
    }

    Rectangle {
        color: "white"
        width: appWindow.width
        height: 62
        Image {
            source: "hren3.png"
            x: 0
            y: 0
        }
        Image {
            source: "hren4.png"
            x: appWindow.width - 184
            y: 0
        }
        id: top
    }

    Rectangle {
        y: top.height
        width: appWindow.width
        height: 6
        gradient: Gradient {
                 GradientStop { position: 0.0; color: "white" }
                 GradientStop { position: 1.0; color: "black" }
             }
    }

    Text {
        id: output
        y: 10
        x: appWindow.width/2
        text: "0"
        font.pointSize: 24
        font.family: "Tahoma"
        color: "#57200a"
    }

    Timer {
        interval: 1000;
        running: true;
        repeat: true;
        property int currTime: 0
        onTriggered: {
            currTime++;
        }
        id: globalTimer
    }

    Timer {
        interval: 300;
        running: true;
        repeat: true;
        onTriggered: {
            Module1.createCircle(120, 137);
        }
    }

}
