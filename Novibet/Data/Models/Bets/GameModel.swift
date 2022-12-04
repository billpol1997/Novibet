//
//  GameModel.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import Foundation

struct GameModel : Codable{
    var id = UUID()
    var betViews  = [SportModel]()
    
    enum CodingKeys : String , CodingKey {
        case betViews = "betViews"
    }
}

struct SportModel: Codable{
    var id = UUID()
    var sport: String = ""
    var competitions = [CompetitionsModel]()
    
    
    enum CodingKeys : String , CodingKey {
        case sport = "competitionContextCaption"
        case competitions = "competitions"
    }
}

struct CompetitionsModel : Codable,Identifiable{
    var id : Int = 0
    var region : String = ""
    var events = [EventsModel]()
    
    enum CodingKeys : String , CodingKey {
        case id = "betContextId"
        case region = "regionCaption"
        case events = "events"
        
    }
}

struct EventsModel : Codable,Identifiable{
    var id: Int = 0
    var captions = GameData()
    var liveData = LiveDataModel()
    var markets = [MarketModel]()
    enum CodingKeys : String , CodingKey {
        case id = "betContextId"
        case captions = "additionalCaptions"
        case liveData = "liveData"
        case markets = "markets"
        
    }
}

struct MarketModel : Codable ,Identifiable{
    var id: Int = 0
    var bets : [BetItems] = []
    
    enum CodingKeys : String , CodingKey {
        case id = "marketId"
        case bets = "betItems"
    }
}

struct LiveDataModel : Codable{
    
    var elapseTime: String = ""
    var home : Int = 0
    var away : Int = 0
    
    enum CodingKeys : String , CodingKey {
        case elapseTime = "elapsed"
        case home = "homeGoals"
        case away = "awayGoals"
    }
}

struct GameData : Codable{
    var id : Int = 0
    var compOne : String = ""
    var compTwo: String = ""
    
    
    enum CodingKeys : String , CodingKey {
        case id = "type"
        case compOne = "competitor1"
        case compTwo = "competitor2"
    }
}

