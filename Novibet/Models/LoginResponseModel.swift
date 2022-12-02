//
//  LoginResponseModel.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import Foundation

struct LoginResponseModel: Codable{
    
    var accessToken : String = ""
    var tokenType: String = ""
    
    public init(){}
    
    enum CodingKeys: String, CodingKey{
        case accessToken = "access_token"
        case tokenType = "token_type"
    }
}
