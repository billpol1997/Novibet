//
//  KeychainHelperService.swift
//  Novibet
//
//  Created by Bill on 4/12/22.
//

import Foundation
import KeychainAccess
public final class KeychainHelperService{
    public static let standard = KeychainHelperService()
    var con = Constants()
    public init(){}
    let keychain = Keychain(service: "http://www.mocky.io/v2/5d8e4bd9310000a2612b5448/login")
    
    // MARK: save token
    public func storeToken(token:String,user:String){
        do{
            try keychain.set(token,key: user)
            
        }catch let error{
            print(error)
        }
    }
    
    // MARK: return token
    public func getToken() -> String{
        let token = try? keychain.getString("")
        return token ?? "6AANov3Vn6-a8--q9HTGBPLe-xTVZH3sbOSkuEseHHVzgcx9ILWUfRi1BOwWs65_6nraTCxZKtd2Cq29xy1AE8B9OjOQCNqmxpdBqBXUEe2drhng6jzcEtVXLrt84yb3XKbI5zETYlNygu7MnHN6c7Ek9KAX_ps0SWlue-QD6ariw6lpw4fzMjzqJbdy2ufei6q7VR8zU7AvfQJzGRi7Yw" as String
    }
}
