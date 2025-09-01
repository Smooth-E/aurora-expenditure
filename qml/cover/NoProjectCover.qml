/*
 * This file is part of Expenditure.
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 Smooth-E
 */

import QtQuick 2.6
import Sailfish.Silica 1.0

CoverBackground {    
    Column {
        x: Theme.paddingCover
        y: appWindow.coverTopPadding
        width: parent.width - x * 2
        spacing: Theme.paddingSmall

        PrimaryCoverLabel {
            width: parent.width
            text: qsTr("Welcome to Expenditure!")
        }

        SecondaryCoverLabel {
            width: parent.width - Theme.paddingMedium * 2
            text: qsTr("Create a project to start tracking your expenses")
        }
    }

    CoverActionList {
        id: actionList

        CoverAction {
            iconSource: "image://theme/icon-cover-new"

            onTriggered: appWindow.goToFirstPageAndOpen(Qt.resolvedUrl("../pages/SettingsPage.qml"))
        }
    }
}
