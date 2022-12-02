//
//  FontFamilyEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

enum FontFamilyEnum{
    case helveticaBold
    case helvetica
    case helveticaLight
    case firasansMedium
    
    var name: String{
        switch self {
        case .helveticaLight:
            return "HelveticaNeue-Light"
        case .helveticaBold:
            return "HelveticaNeue-Bold"
        case .helvetica:
            return "HelveticaNeue"
        case .firasansMedium:
            return "FiraSans-Medium"
        }
    }
}

