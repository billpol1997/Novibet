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
    
    var width: CGFloat{
        switch self{
        case .loginbuttonWidth:
            return 200
        case .topBarLogoWidth:
            return 250
        }
    }
}
