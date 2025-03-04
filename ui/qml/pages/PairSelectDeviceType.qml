import QtQuick 2.0
import "../components"
import "../components/platform"

PageListPL {
    id: page

    title: qsTr("Select Device Type")

    delegate: DeviceButton {
        onSelected: {
            if (needsAuth) {
                var authdialog = app.pages.push(Qt.resolvedUrl("./AuthKeyDialog.qml"));
                authdialog.accepted.connect(function() {
                    var pairpage = app.pages.push(Qt.resolvedUrl("./PairPage.qml"));
                    pairpage.deviceType = deviceType;})
            } else {
                var pairpage = app.pages.push(Qt.resolvedUrl("./PairPage.qml"));
                pairpage.deviceType = deviceType;
            }
        }
    }

    model: ListModel {
        ListElement {
            deviceType: "Amazfit Bip Watch"
            icon: "../pics/devices/amazfit-bip.png"
        }

        ListElement {
            deviceType: "Amazfit Bip Lite"
            icon: "../pics/devices/amazfit-bip.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit Bip S"
            icon: "../pics/devices/amazfit-bips.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit GTS"
            icon: "../pics/devices/amazfit-gts.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit GTS 2"
            icon: "../pics/devices/amazfit-gts2.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit GTR"
            icon: "../pics/devices/amazfit-gtr.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit GTR 2"
            icon: "../pics/devices/amazfit-gtr2.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit Cor"
            icon: "../pics/devices/amazfit-cor.png"
        }

        ListElement {
            deviceType: "MI Band 2"
            icon: "../pics/devices/miband2.png"
        }

        ListElement {
            deviceType: "Mi Band 3"
            icon: "../pics/devices/miband3.png"
        }

        ListElement {
            deviceType: "Mi Smart Band 4"
            icon: "../pics/devices/miband4.png"
            auth: true
        }

        ListElement {
            deviceType: "Amazfit Stratos 3"
            icon: "../pics/devices/miband4.png"
            auth: true
        }

        ListElement {
            deviceType: "InfiniTime"
            icon: "../pics/devices/pinetime.png"
            auth: false
        }
        ListElement {
            deviceType: "Pinetime"
            icon: "../pics/devices/pinetime.png"
            auth: false
        }
        ListElement {
            deviceType: "Bangle.js"
            icon: "../pics/devices/banglejs.png"
            auth: false
        }
    }

}
