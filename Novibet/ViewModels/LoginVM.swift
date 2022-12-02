//
//  LoginVM.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI
import Foundation
import Alamofire
import Combine

final class LoginVM: ObservableObject{
    
    //MARK: Vars
    @Published var username = ""{
        didSet{
            validator()
        }
    }
    
    @Published var password = ""{
        didSet{
            validator()
        }
    }
    
    @Published var isLoginAvailable: Bool = false
    @Published var isLoginButtonActive: Bool = false
    @Published var tokenResponse = LoginResponseModel()
    @Published var token = ""
    private var cancellableSet : Set<AnyCancellable> = []
    private var api = APIManager()
    
    private var con = Constants()
    
    //MARK: validate textfields
    func validator(){
        isLoginAvailable = username.isTextValid(regex: con.regex) && password.isTextValid(regex: con.regex)
    }
    
    //MARK: activate login button
    func checkLoginButtonActive(){
        if username.isEmpty || password.isEmpty{
            isLoginButtonActive = false
        }else{
            isLoginButtonActive = true
        }
    }
    
    //MARK: Login
    func login(completion: @escaping (String?) -> Void){
        api.LoginRequest(username: username, password: password)
            .sink{ response in
                if response.error != nil {
                    print(response.error!.localizedDescription)
                }else{
                    self.tokenResponse = response.value!
                    self.token = self.tokenResponse.accessToken
                    print(self.token)
                    completion(nil)
                }
            }.store(in: &cancellableSet)
    }
    
}
