//
//  APIManager.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation
import Alamofire
import Combine

class APIManager{
    
    static let sharedInstance = APIManager()
    var con = Constants()
    
    //MARK: Login API Call
    func LoginRequest(username: String, password: String) -> AnyPublisher<DataResponse<LoginResponseModel,NetworkError>,Never>{
        let parameters : [String: Any] = ["userName" : username,"password" : password]
        return AF.request(con.loginURL,method: .post,parameters: parameters,encoding: JSONEncoding.default,headers: con.headers)
            .publishDecodable(type: LoginResponseModel.self)
            .map{ response in
                response.mapError{ error in
                    let backendError = response.data.flatMap{try? JSONDecoder().decode(BackendError.self,from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
