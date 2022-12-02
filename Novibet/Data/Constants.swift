//
//  Constants.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import Foundation
import Alamofire

class Constants{
    let usernameHint = "Type your username"
    let passwordHint = "Type your password"
    let regex = "[A-Z]{2}[0-9]{4}"
    let loginURL = "http://www.mocky.io/v2/5d8e4bd9310000a2612b5448/login"
    let gamesURL = "http://www.mocky.io/v2/5d7113513300000b2177973a"
    let headlinesURL = "http://www.mocky.io/v2/5d7113ef3300000e00779746"
    let updatedGamesURL = "http://www.mocky.io/v2/5d7114b2330000112177974d"
    let updatedHeadlinesURL = "http://www.mocky.io/v2/5d711461330000d135779748"
    let headers : HTTPHeaders = [.contentType("application/json")]
    
    func getHeaderWithToken(token:String) -> HTTPHeaders{
        return ["Authorization" : token,"Accept" : "application/json"]
    }
}
