/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: item1
    property alias cancelButton: cancelButton
    property alias loginButton: loginButton
    property alias userName: userName
    property alias password: password

    ColumnLayout {
        id: columnLayout
        anchors.topMargin: 20
        anchors.top: parent.top
        anchors.bottomMargin: 20
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.right: parent.right
        anchors.leftMargin: 20
        anchors.left: parent.left

        Image {
            id: image
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            source: "qrc:/icon.svg"
        }

        Rectangle {
            id: rectangle
            width: parent.width
            height: 30
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#25a6e2"
                }
                GradientStop {
                    color: "#188bd0"
                }
            }

            Text {
                id: textArea
                x: 54
                y: 5
                color: "#ffffff"
                text: qsTr("Restricted Area")
                font.pointSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Item {
            width: 40
            height: 40
        }

        Text {
            id: userNameText
            text: qsTr("Username:")
            font.pointSize: 12
        }

        TextField {
            id: userName
            width: 300
            height: 22
            Layout.fillWidth: true
            font.pointSize: 12
        }

        Text {
            id: passwordText
            text: qsTr("Password:")
            font.pointSize: 12
        }

        TextField {
            id: password
            width: 300
            height: 26
            Layout.fillWidth: true
            font.pointSize: 12
        }

        Item {
            Layout.fillHeight: true
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100

            Item {
                Layout.fillWidth: true
            }

            CustomButton {
                id: cancelButton
                width: 90
                height: 30
                btnText: qsTr("Cancel")
                btnBlue: false
            }

            CustomButton {
                id: loginButton
                width: 90
                height: 30
                btnText: qsTr("Login")
                btnBlue: false
            }
        }
    }
}
