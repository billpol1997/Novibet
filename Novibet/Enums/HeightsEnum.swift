//
//  HeightsEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum HeightsEnum{
    case topBarLogoHeight
    case indicatorHeight
    case ballIconHeight
    
    var height: CGFloat{
        switch self{
        case .indicatorHeight:
            return 1.5
        case .ballIconHeight:
            return 15
        case .topBarLogoHeight:
            return 75
        }
    }
}
