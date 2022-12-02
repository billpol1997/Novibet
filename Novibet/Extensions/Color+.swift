//
//  Color+.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let background = Color("NovibetBackgroundColor")
    let novibetBlack = Color("NovibetBlack")
    let novibetFadeBlue = Color("NovibetFadeBlue")
    let novibetFadeGrey = Color("NovibetFadeGrey")
    let novibetGrey = Color("NovibetGrey")
    let novibetLightGrey = Color("NovibetLightGrey")
    let novibetRed = Color("NovibetRed")
    let logo = Color("NovibetLogoColor")
}
