/*
 * This file is part of harbour-expenditure.
 * SPDX-FileCopyrightText: 2024 Mirian Margiani
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

/*
 * Translators:
 * Please add yourself to the list of translators in TRANSLATORS.json.
 * If your language is already in the list, add your name to the 'entries'
 * field. If you added a new translation, create a new section in the 'extra' list.
 *
 * Other contributors:
 * Please add yourself to the relevant list of contributors below.
 *
 */

import QtQuick 2.0
import Sailfish.Silica 1.0 as S
import Opal.About 1.0 as A
import "../modules/Opal/Attributions"

A.AboutPageBase {
    id: page

    appName: appWindow.appName
    appIcon: Qt.resolvedUrl("../images/%1.png".arg("harbour-" + Qt.application.name))
    appVersion: APP_VERSION
    appRelease: APP_RELEASE

    allowDownloadingLicenses: false
    sourcesUrl: "https://github.com/ichthyosaurus/%1".arg("harbour-" + Qt.application.name)
    homepageUrl: "https://forum.sailfishos.org/t/apps-by-ichthyosaurus/15753"
    translationsUrl: "https://hosted.weblate.org/projects/%1".arg("harbour-" + Qt.application.name)
    changelogList: Qt.resolvedUrl("../Changelog.qml")
    licenses: A.License { spdxId: "GPL-3.0-or-later" }

    donations.text: donations.defaultTextCoffee
    donations.services: [
        A.DonationService {
            name: "Liberapay"
            url: "https://liberapay.com/ichthyosaurus"
        }
    ]

    description: qsTr("A simple app for tracking expenses in groups.")
    mainAttributions: ["2023-%1 Mirian Margiani".arg((new Date()).getFullYear()), "2022 Tobias Planitzer"]

    attributions: [
        A.Attribution {
            name: "PyOtherSide"
            entries: ["2011, 2013-2020 Thomas Perl"]
            licenses: A.License { spdxId: "ISC" }
            sources: "https://github.com/thp/pyotherside"
            homepage: "https://thp.io/2011/pyotherside/"
        },
        OpalAboutAttribution {},
        OpalDelegatesAttribution {},
        OpalSupportMeAttribution {},
        OpalSmartScrollbarAttribution {},
        OpalMenuSwitchAttribution {},
        OpalComboDataAttribution {}
    ]

    contributionSections: [
        A.ContributionSection {
            title: qsTr("Development")
            groups: [
                A.ContributionGroup {
                    title: qsTr("Programming")
                    entries: ["Mirian Margiani", "Tobias Planitzer", "yajo10"]
                },
                A.ContributionGroup {
                    title: qsTr("Icon Design")
                    entries: ["Tobias Planitzer"]
                }
            ]
        },

        //>>> GENERATED LIST OF TRANSLATION CREDITS
        //<<< GENERATED LIST OF TRANSLATION CREDITS
    ]
}
