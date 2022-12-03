//
//  GameModel.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import Foundation

struct GameModel : Codable, Identifiable{
    var sport: String = ""
    var id : Int = 0
    var compOne : String = ""
    var compTwo: String = ""
    var elapseTime: String = ""
    var bets : [BetItems] = []
    
    enum CodingKeys : String , CodingKey {
        case sport = "competitionContextCaption"
        case id = "betContextId"
        case compOne = "competitor1"
        case compTwo = "competitor2"
        case elapseTime = "elapsed"
        case bets = "betItems"
    }
    
}

