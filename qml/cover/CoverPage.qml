/*
 * This file is part of Expenditure.
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2024 yajo10
 * SPDX-FileCopyrightText: 2025 Smooth-E
 */

import QtQuick 2.6
import Sailfish.Silica 1.0

CoverBackground {
    id: cover

    Column {
        x: Theme.paddingCover
        y: appWindow.coverTopPadding
        width: parent.width - x * 2
        spacing: Theme.paddingSmall
        visible: !appWindow.activeProject.informativeCover

        PrimaryCoverLabel {
            width: parent.width
            text: qsTr("Expense manager")
        }

        SecondaryCoverLabel {
            width: parent.width
            text: qsTr("Manage group expenses in different currencies")
        }
    }

    Column {
        x: Theme.paddingCover
        y: appWindow.coverTopPadding
        width: parent.width - x * 2
        spacing: Theme.paddingSmall
        visible: appWindow.activeProject.informativeCover

        SecondaryCoverLabel {
            width: parent.width
            text: qsTr("Active project")
        }

        PrimaryCoverLabel {
            width: parent.width
            text: appWindow.activeProject.name
            wrapMode: Text.NoWrap
            truncationMode: TruncationMode.Fade
        }

        SecondaryCoverLabel {
            width: parent.width
            text: qsTr("Expenses logged")
        }

        PrimaryCoverLabel {
            width: parent.width
            text: appWindow.activeProject.expenses.count
            wrapMode: Text.NoWrap
            truncationMode: TruncationMode.Fade
        }
    }

    SecondaryCoverLabel {
        id: importantPageMessage

        anchors.verticalCenter: cover.coverActionArea.verticalCenter
        x: Theme.paddingCover
        width: parent.width - x * 2
        horizontalAlignment: Text.AlignHCenter
        opacity: Theme.opacityOverlay
        visible: !!pageStack.currentPage.isImportantPage
        text: pageStack.currentPage.coverMessage ? pageStack.currentPage.coverMessage : "..."
    }

    CoverActionList {
        enabled: !importantPageMessage.visible

        CoverAction {
            iconSource: "image://theme/icon-cover-transfers"

            onTriggered: appWindow.getToFirstPageAndOpen(Qt.resolvedUrl("../pages/CalcPage.qml"))
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"

            onTriggered: appWindow.getToFirstPageAndOpen(Qt.resolvedUrl("../pages/ExpenseDialog.qml"))
        }
    }
}
