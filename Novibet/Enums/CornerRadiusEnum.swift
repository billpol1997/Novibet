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
    
    
    var radius: CGFloat{
        switch self {
        case .zeroRadius:
            return 0
        case .loginByttonRadius:
            return 35
        }
    
    }
}
