//
//  OpacityEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

enum OpacityEnum{
    case halfOpacity,almostFullOpacity,quarterOpacity,almostNoOpacity,noOpacity,fullOpacity,mediumOpacity
    
    
    var opacity: Double{
        switch self {
        case .noOpacity:
            return 0.0
        case .almostNoOpacity:
            return 0.1
        case .quarterOpacity:
            return 0.25
        case .halfOpacity:
            return 0.5
        case .mediumOpacity:
            return 0.8
        case .almostFullOpacity:
            return 0.9
        case .fullOpacity:
            return 1.0
        }
    }
}
