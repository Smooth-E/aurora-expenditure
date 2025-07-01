/*
 * This file is part of harbour-expenditure.
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: Mirian Margiani
 */

import QtQuick 2.0
import "modules/Opal/About"

ChangelogList {
    ChangelogItem {
        version: "1.2.1-1"
        date: "2025-07-01"
        paragraphs: [
            "- Updated translations: Estonian, Swedish, Ukrainian<br>" +
            "- Minor packaging changes"
        ]
    }
    ChangelogItem {
        version: "1.2.0-1"
        date: "2025-03-12"
        paragraphs: [
            "- Added translations: Portuguese (Brazil), Romanian, Tamil<br>" +
            "- Updated translations: Estonian, German, Indonesian, Portuguese (Brazil), Spanish, Swedish, Tamil, Ukrainian<br>" +
            "- Added support for quickly adding new members while entering an expense<br>" +
            "- Added support for calculating direct debts instead of an optimized settlement suggestion<br>" +
            "- Fixed some input fields missing placeholder texts<br>" +
            "- Fixed 0.00 sometimes showing up in settlement suggestions<br>" +
            "- Updated Opal modules"
        ]
    }
    ChangelogItem {
        version: "1.1.0-1"
        date: "2024-10-10"
        paragraphs: [
            "- Updated translations: Swedish, Spanish, Norwegian Bokmål, and more<br>" +
            "- Fixed corner cases in migrating from legacy databases to the current schema<br>" +
            "- Fixed scrolling when adding new project members<br>" +
            "- Fixed stuttering when scrolling the main expenses list<br>" +
            "- Fixed currency input when running under a different locale than the system locale<br>" +
            "- Fixed some untranslatable strings<br>" +
            "- Fixed some typos<br>" +
            "- Improved database error reporting and stability<br>" +
            "- Improved translation instructions for some ambiguous strings<br>" +
            "- Updated Opal modules<br>" +
            "- Updated list of translation contributors (now automatically added from Weblate)"
        ]
    }
    ChangelogItem {
        version: "1.0.1-1"
        date: "2024-09-20"
        paragraphs: [
            "- Hotfix to fix importing CSV<br>" +
            "- Note that the CSV format has changed and files exported using app versions before the rewrite (< 1.0.0) can not be imported<br>" +
            "- Please reach out if you would need that kind of backwards compatibility!"
        ]
    }
    ChangelogItem {
        version: "1.0.0-1"
        date: "2024-09-20"
        author: "Mirian Margiani (ichthyosaurus)"
        paragraphs: [
            "- Complete rewrite of the app with a brand new user interface, improved stability, and many new features<br>" +
            "- Added support for fees and exchange rates per transaction<br>" +
            "- Added changelog<br>" +
            "- Added support for backups using MyBackup<br>" +
            "- Updated readme with details on required permissions<br>" +
            "- and much more"
        ]
    }
    ChangelogItem {
        version: "0.4-1"
        date: "2023-12-16"
        author: "yajo10"
        paragraphs: [
            "- Added translations: Swedish<br>" +
            "- Improved handling of decimal separators when adding a new entry"
        ]
    }
    ChangelogItem {
        version: "0.3-1"
        date: "2023-11-25"
        author: "yajo10"
        paragraphs: [
            "- Added Chum packaging<br>" +
            "- Added more details on the About page"
        ]
    }
    ChangelogItem {
        version: '0.2-1'
        date: "2022-01-01"
        author: "Tobias Planitzer"
        paragraphs: [
            '- Last release by the original author'
        ]
    }
}
