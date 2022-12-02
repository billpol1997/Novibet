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
    
    var height: CGFloat{
        switch self{
        case .indicatorHeight:
            return 1.5
        case .topBarLogoHeight:
            return 75
        }
    }
}
