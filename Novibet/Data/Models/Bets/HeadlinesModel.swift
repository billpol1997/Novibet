//
//  HeadlineModel.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import Foundation


struct HeadlinesModel : Codable{
    var betView = [HeadlineData]()
    
    enum CodingKeys : String , CodingKey {
        case betView = "betViews"
    }
}

struct HeadlineData : Codable ,Identifiable{
    var id: Int = 0
    var compOne : String = ""
    var compTwo: String = ""
    var startTime: String = ""
    var bets: [BetItems]? = []
    
    enum CodingKeys : String , CodingKey {
        case id = "betContextId"
        case compOne = "competitor1Caption"
        case compTwo = "competitor2Caption"
        case startTime = "startTime"
        case bets = "betItems"
    }
}


struct BetItems: Codable, Identifiable{
    var id: Int = 0
    var code: String = ""
    var odds: String = ""
    
    enum CodingKeys : String , CodingKey{
        case id = "id"
        case code = "code"
        case odds = "oddsText"
    }
}
