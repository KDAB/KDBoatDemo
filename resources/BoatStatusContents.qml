/*
  This file is part of the KDAB Nautical UI demo.

  SPDX-FileCopyrightText: 2013-2021 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>

  SPDX-License-Identifier: MIT

  Contact info@kdab.com for more information about this software.
*/

import QtQuick 2.12
import QtQuick.Layouts 1.12

Item {
    id: boatStatusContents

    GridLayout {
        anchors.fill: parent
        columns: 4

        Speeds {
            gaugetext: qsTr("Oil Pressure")
            initvalue: 380
            variance: 20
            unit: " psi"
            precision: 4
            speed: 400
        }
        Textgauge {
            inttext: qsTr("Off")
            gaugetext: qsTr("Diesel engine")
        }
        Textgauge {
            inttext: qsTr("On")
            gaugetext: qsTr("Water Pump")
        }

        Column {
            Layout.rowSpan: 2
            spacing: 37
            TextgaugeSmall {
                gaugetext: qsTr("Internal Lights")
                inttext: qsTr("On")
                off: 1
            }
            TextgaugeSmall {
                gaugetext: qsTr("Exterior Lights")
                inttext: qsTr("Off")
                off: 2
            }
            TextgaugeSmall {
                gaugetext: qsTr("Solar Charger")
                inttext: qsTr("On")
                off: 1
            }
            TextgaugeSmall {
                gaugetext: qsTr("Anchor Position")
                inttext: qsTr("Stored")
            }
            TextgaugeSmall {
                gaugetext: qsTr("Main Sail")
                inttext: qsTr("Open")
            }
            TextgaugeSmall {
                gaugetext: qsTr("Front Sail")
                inttext: qsTr("Open")
            }
        }

        Speeds {
            gaugetext: qsTr("Diesel Tank")
            initvalue: 320
            variance: 0
            unit: " x10 Gal."
            precision: 4
            speed: 1000000
        }
        Speeds {
            gaugetext: qsTr("Battery")
            initvalue: 409
            variance: 12
            unit: " Volts"
            precision: 4
            speed: 1000000
        }
        Speeds {
            gaugetext: qsTr("Water level")
            initvalue: 350
            variance: 120
            unit: ""
            precision: 4
            speed: 100
        }
    }
}
