//
//  FontSizesEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum FontSizesEnum{
    case tinyFontSize
    case smallFontSize
    case normalFontSize
    case bigFontSize
    case normalFontMaxSize
    
    var size: CGFloat{
        switch self{
        case .tinyFontSize:
            return 13
        case .smallFontSize:
            return 16
        case .normalFontSize:
            return 18
        case . normalFontMaxSize:
            return 20
        case .bigFontSize:
            return 24
        }
    }
}
