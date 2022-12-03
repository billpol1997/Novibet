//
//  CornerRadiusEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum CornerRadiusEnum{
    case zeroRadius
    case loginByttonRadius
    case probContainerRadius
    case headlineContainerRadius
    case gameContainerRadius
    
    
    var radius: CGFloat{
        switch self {
        case .zeroRadius:
            return 0
        case .probContainerRadius:
            return 5
        case .gameContainerRadius:
            return 9
        case .headlineContainerRadius:
            return 10
        case .loginByttonRadius:
            return 35
        }
    
    }
}
