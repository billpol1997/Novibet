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
    case probContainerVerticalPadding
    case probContainerHorizontalPadding
    case headlineContainerVerticalPadding
    case pageIndVerticalPadding
    case gameContainerProbsTopPadding
    
    
    
    var padding: CGFloat{
        switch self{
        case .probContainerVerticalPadding:
            return 5
        case .headlineContainerVerticalPadding,.gameContainerProbsTopPadding,.screenHorizontalPadding:
            return 10
        case .probContainerHorizontalPadding,.pageIndVerticalPadding:
            return 11
        case .passwordIconPadding,.loginButtonVerticalPadding:
            return 15
        case .indicatorHorizontalPadding:
            return 30
        case .loginButtonBottomPadding:
            return 35
        case .logoBottomPadding,.logoInsideTopPadding:
            return 50
        }
    }
}
