//
//  WidthsEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum WidthsEnum{
    case topBarLogoWidth
    case loginbuttonWidth
    case ballIconWidth
    case headerMinWidth
    
    var width: CGFloat{
        switch self{
        case .ballIconWidth:
            return 15
        case .loginbuttonWidth:
            return 200
        case .topBarLogoWidth:
            return 250
        case .headerMinWidth:
            return 360
        }
    }
}
