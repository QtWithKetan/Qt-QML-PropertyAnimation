import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:myRect_1
        width: 100
        height: 100
        color: "#FF0000"

        PropertyAnimation on x
        {
            from: 0
            to: width - myRect_1.width
            duration: 2000
            easing.type : Easing.InBounce
        }
    }

    Rectangle
    {
        id:myRect_2
        width: 100
        height: 100
        color: "#00FF00"

        PropertyAnimation on y
        {
            from: 0
            to: height - myRect_2.height
            duration: 2000
            easing.type : Easing.OutBounce
        }
    }

    Rectangle
    {
        id:myRect_3
        width: 100
        height: 100
        color: "#0000FF"

        anchors.centerIn: parent

        PropertyAnimation on rotation
        {
            from: 0
            to: 360
            loops: Animation.Infinite
            duration: 2000
            easing.type : Easing.InOutBounce
        }
    }
}
