//
//  LoginModel.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import Foundation

struct LoginModel: Codable{
    
    var username: String = ""
    var password: String = ""
    
    enum CodingKeys: String, CodingKey{
        case username = "userName"
        case password = "password"
    }
}
