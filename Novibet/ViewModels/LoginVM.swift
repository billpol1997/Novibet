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
    @Published var token = LoginResponseModel()
    private var cancellableSet : Set<AnyCancellable> = []
    private var api = APIManager()
    
    
    private var con = Constants()
    
    func validator(){
        isLoginAvailable = username.isTextValid(regex: con.regex) && password.isTextValid(regex: con.regex)
    }
    
    func checkLoginButtonActive(){
        if username.isEmpty || password.isEmpty{
            isLoginButtonActive = false
        }else{
            isLoginButtonActive = true
        }
    }
    
    func login(completion: @escaping (String?) -> Void){
        do{
            try api.LoginRequest(username: username, password: password)
                .sink{ response in
                    if response.error != nil {
                        print(response.error!.localizedDescription)
                    }else{
                        self.token = response.value!
                        completion(nil)
                    }
                }.store(in: &cancellableSet)
        }catch{}
        
    }
    
}
