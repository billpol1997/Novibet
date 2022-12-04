//
//  UpdateHeadlinesModel.swift
//  Novibet
//
//  Created by Bill on 4/12/22.
//

import Foundation

struct UpdateHeadlinesModel: Codable{
    var betArr = [UHData]()
    
    enum CodingKeys : String , CodingKey {
        case betArr = "betViews"
    }
}


struct UHData: Codable {
    var id: Int? = 0
    var compOne : String? = ""
    var compTwo: String? = ""
    var startTime: String? = ""
    
    enum CodingKeys : String , CodingKey {
        case id = "betContextId"
        case compOne = "competitor1Caption"
        case compTwo = "competitor2Caption"
        case startTime = "startTime"
    }
}
