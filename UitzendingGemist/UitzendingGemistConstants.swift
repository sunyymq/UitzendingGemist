//
//  UitzendingGemistConstants.swift
//  UitzendingGemist
//
//  Created by Jeroen Wesbeek on 17/07/16.
//  Copyright © 2016 Jeroen Wesbeek. All rights reserved.
//

import Foundation

enum CollectionViewCells: String {
    case Tip = "tipCollectionViewCell"
    case OnDeck = "onDeckCollectionViewCell"
    case Still = "stillCollectionViewCell"
    case Program = "programCollectionViewCell"
    case Episode = "episodeCollectionViewCell"
    case Live = "liveCollectionViewCell"
    case ProgramDetail = "programDetailedCollectionViewCell"
    case DayDetail = "byDayDetailCollectionViewCell"
    case YouTube = "youTubeCollectionViewCell"
}

enum TableViewCells: String {
    case ProgramGroup = "programRootTableViewCell"
    case Day = "byDayRootTableViewCell"
}

//enum CollectionViewHeaders: String {
//    case Episode = "episodeCollectionViewHeader"
//    case Program = "programCollectionViewHeader"
//}

enum ViewControllers: String {
    case ProgramViewController
    case EpisodeViewController
}

enum Segues: String {
    case HomeToEpisodeDetails = "HomeToEpisodeDetailsSegue"
    case EpisodeToProgramDetails = "EpisodeToProgramDetailsSegue"
    case ProgramToDetails = "ProgramToProgramDetailsSegue"
    case ProgramToEpisode = "ProgramToEpisodeSegue"
    case ProgramToPlayEpisode = "ProgramToPlayEpisodeSegue"
    case ProgramToYouTube = "ProgramToYouTubeSegue"
}

open class UitzendingGemistConstants {
    // user defaults
    static let closedCaptioningEnabledKey = "UGClosedCaptioningEnabled"
    
    // some unicode characters to use: ⦁◔◕◖◗◉●●⌾◕◔◖●⊚⊛⌾⍟⃘⃠•๏ං௦
    static let watchedSymbol = ""
    static let unwatchedSymbol = "● "
    static let partiallyWatchedSymbol = "๏ "
    static let favoriteSymbol = " ♥︎"
    
    static let separator = " · "
    
    static let unknownText = NSLocalizedString("Onbekend", comment: "Unkown")
    static let unknownEpisodeName = NSLocalizedString("Naamloze aflevering", comment: "Unkown episode name")
    static let unknownProgramName = NSLocalizedString("Naamloos programma", comment: "Unkown program name")
    static let genreText = NSLocalizedString("Genre", comment: "Genre")
    static let broadcasterText = NSLocalizedString("Omroep", comment: "Broadcaster")

    static let warningEpisodeUnavailable = NSLocalizedString("Deze aflevering is momenteel niet beschikbaar", comment: "This episode is currently not available")
    static let warningEpisodeUnavailableFromLocation = NSLocalizedString("Deze aflevering is niet beschikbaar op uw locatie", comment: "This episode is not available on your location")
    static let warningEpisodeUnavailableFromCountry = NSLocalizedString("Deze aflevering is niet beschikbaar vanuit %@", comment: "This episode is not available from [some country]")
    
    static let playText = NSLocalizedString("Speel", comment: "Play")
    static let playUnavailableText = NSLocalizedString("Niet beschikbaar", comment: "Not available")
    static let toProgramText = NSLocalizedString("Naar Programma", comment: "To Program")
    static let favoriteText = NSLocalizedString("Favoriet", comment: "Favorite")
    
    static let continueWatchingTitleText = NSLocalizedString("Verder kijken", comment: "Continue watching")
    static let continueWatchingMessageText = NSLocalizedString("U heeft deze aflevering al deels bekeken. Wilt u verder kijken vanaf het punt waar u bent gebleven of wilt u opnieuw beginnen?",
                                                               comment: "Ask user to continue watching or to restart")
    static let coninueWatchingFromText = NSLocalizedString("Verder kijken vanaf %@", comment: "Continue watching from hh:min:ss")
    static let watchFromStartText = NSLocalizedString("Bij het begin beginnen", comment: "Start watching from the beginning")
    
    static let cancelText = NSLocalizedString("Annuleren", comment: "Cancel")
    
    static let waitText = NSLocalizedString("Een ogenblik geduld alstublieft...", comment: "Please wait text")
    
    static let updateAvailableTitle = NSLocalizedString("Nieuwere versie beschikbaar", comment: "A newer version is available")
    static let updateAvailableText = NSLocalizedString("Uitzending Gemist versie '%@' is beschikbaar op %@ . Momenteel maakt u gebruik van Uitzending Gemist versie '%@'.", comment: "A newer version is available for download")
    static let okayButtonText = NSLocalizedString("OK", comment: "OK Button Text")
    
    static let commercials = NSLocalizedString("Reclame of geen uitzending", comment: "Commercial break or no broadcast")
    static let currentBroadcast = NSLocalizedString("Nu: %@", comment: "Current broadcast")
    static let upcomingBroadcast = NSLocalizedString("Straks: %@", comment: "Upcoming broadcast (without time)")
    static let upcomingBroadcastWithTime = NSLocalizedString("%@: %@", comment: "Upcoming broadcast (with time)")
    
    static let markAsWatchedText = NSLocalizedString("Markeer als gezien", comment: "Mark episode as watched")
    static let markAllAsWatchedText = NSLocalizedString("Markeer alles als gezien", comment: "Mark all episodes as watched")
    static let markAsUnwatchedText = NSLocalizedString("Markeer als ongezien", comment: "Mark episode as unwatched")
    static let markAllAsUnwatchedText = NSLocalizedString("Markeer alles als ongezien", comment: "Mark all episodes as unwatched")
}
