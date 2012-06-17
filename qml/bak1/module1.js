var component;
var sprite;
//var clicks;

function createCircle(imgwidth, imgheight) {
    var mn = 66;
    component = Qt.createComponent("balloon.qml");

    var x = Math.floor(Math.random() * (appWindow.width  - imgwidth) + 1);
    var y = Math.floor(Math.random() * (appWindow.height - imgheight - mn) + 1 + mn);
    sprite = component.createObject(appWindow,
                                    {"x": x, "y": y });

    if (sprite == null) {
        console.log("Error creating new Baloon");
    }
}
