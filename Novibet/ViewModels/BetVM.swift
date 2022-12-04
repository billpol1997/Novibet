//
//  BetVM.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI
import Foundation
import Alamofire
import Combine

final class BetVM: ObservableObject{
    
    @Published var initHeadlines = [HeadlinesModel]()
    @Published var headlines = [HeadlineData]()
    @Published var updatedHeadlines = [UpdateHeadlinesModel]()
    @Published var games = [GameModel]()
    @Published var headers = [SportModel]()
    private var cancellableSet : Set<AnyCancellable> = []
    private var api = APIManager()
    var token : String = ""
    private var con = Constants()
    var iterate : Int = 0
    var counter : Int = 0
    var isTimeToUpdate : Bool = false
    
    init(){
      load()
    }
    
    func load(){
        self.LoadHeadlines{
            error in
                if let error = error{
                    print(error)
                    print("error in load headlines")
                }else{
                    print("success in load headlines")
                }
        }
        
        self.LoadGames{
            error in
                if let error = error{
                    print(error)
                    print("error in games")
                }else{
                    print("success in games")
                    
                }
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            while true{
                self.counter += 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    self.isTimeToUpdate = true
                    self.UpdateHeadlines{
                        error in
                            if let error = error{
                                print(error)
                                print("error in updatesHeadlines")
                            }else{
                                print("success in updatesHeadlines")
                            }
                    }
                }
                self.isTimeToUpdate = false
                if(self.counter == 5){
                    break
                }
            }
        }
    }
    
    func displayHeadlines(){
        self.headlines = self.initHeadlines.first!.betView
    }
    
    func displayHeaders(){
        self.headers = self.games.first?.betViews ?? []
    }
    
    
    func LoadHeadlines(completion: @escaping (String?) -> Void){
        api.HeadlinesRequest(token: token)
            .sink{response in
                if response.error != nil{
                    print(response.error!.localizedDescription)
                    debugPrint(response.error!)
                }else{
                    self.initHeadlines = response.value!
                    print(self.initHeadlines.count)
                    print(self.initHeadlines)
                    self.displayHeadlines()
                    completion(nil)
                }
            }.store(in: &cancellableSet)
    }
    
    func UpdateHeadlines(completion: @escaping (String?) -> Void){
        api.UpdateHeadlinesRequest(token: token)
            .sink{response in
                if response.error != nil{
                    print(response.error!.localizedDescription)
                    debugPrint(response.error!)
                }else{
                    self.updatedHeadlines = response.value!
                    completion(nil)
                }
            }.store(in: &cancellableSet)
    }
    
    func LoadGames(completion: @escaping (String?) -> Void){
        api.GameRequest(token: token)
            .sink{response in
                if response.error != nil{
                    print(response.error!.localizedDescription)
                    debugPrint(response.error!)
                }else{
                    self.games = response.value!
                    self.displayHeaders()
                    completion(nil)
                }
            }.store(in: &cancellableSet)
    }
}
