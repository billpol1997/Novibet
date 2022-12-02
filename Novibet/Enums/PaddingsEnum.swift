//
//  PaddingsEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum PaddingEnum{
    case passwordIconPadding
    case logoBottomPadding
    case indicatorHorizontalPadding
    case logoInsideTopPadding
    case screenHorizontalPadding
    case loginButtonVerticalPadding
    case loginButtonBottomPadding
    
    
    
    var padding: CGFloat{
        switch self{
        case .passwordIconPadding,.loginButtonVerticalPadding:
            return 15
        case .screenHorizontalPadding:
            return 20
        case .indicatorHorizontalPadding:
            return 30
        case .loginButtonBottomPadding:
            return 35
        case .logoBottomPadding,.logoInsideTopPadding:
            return 50
        }
    }
}
