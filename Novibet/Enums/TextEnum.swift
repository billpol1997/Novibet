//
//  TextEnum.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation

enum TextEnum{
    case empty
    case username
    case password
    case userHint
    case passwordHint
    case login
    
    
    var string: String{
        switch self {
        case .empty:
            return " "
        case .username:
            return "Username"
        case .password:
            return "Κωδικός"
        case .userHint:
            return "Type your username"
        case .passwordHint:
            return "Type your password"
        case .login:
            return "Σύνδεση"
        }
    }
}
