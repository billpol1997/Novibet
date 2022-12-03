//
//  BetView.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct BetView: View {
    //MARK: vars
    @State var currentPage : Int = 2
    @State var isHidden : Bool = false

    //MARK: Body
    var body: some View {
        betScreen
            .navigationBarHidden(true)
    }
    
    //MARK: bet screen
    var betScreen: some View{
        ZStack{
            LinearGradient(colors: [Color.theme.logo,Color.theme.background,Color.theme.novibetBlack], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 0){
                    logo
                    mainView
                }
                Spacer()
            }
            
        }
    }
    
    //MARK: main bet view
    var mainView : some View{
        VStack(spacing: 10){
            headlines
                .customPadding(.bottom, .headlineContainerVerticalPadding)
            ScrollView{
                gameHeader
                games
                Spacer()
            }
        }
        .customPadding(.horizontal, .screenHorizontalPadding)
    }
    
    //MARK: Logo
    var logo : some View{
        VStack {
            LogoTopBar()
                .ignoresSafeArea()
        }
    }
    
    //MARK: List of headlines
    //FIXME: needs foreach and hor scrolling
    var headlines : some View{
        HeadlineContainer(currPage: currentPage, probOne: "1.0", probX:"2.45", probTwo: "7.98",teamOne: "team1",teamTwo: "team2",time: "22:00")
    }
    
    //MARK: List of sports
    //FIXME: needs foreach
    var gameHeader : some View{
        GameHeader(sport: "Ποδόσφαιρο", num: "20", isHidden: $isHidden, gameLeague: "tsoulou")
    }
    
    //MARK: List of matches
    @ViewBuilder
    var games : some View{
        if !isHidden{
            GameContainer(probOne: "1.0", probX: "1.0", probTwo: "1.0", teamOne: "team1", teamTwo: "team2", time: "6:30", scoreOne: "0", scroreTwo: "0")
        }
    }
}

struct BetView_Previews: PreviewProvider {
    static var previews: some View {
        BetView()
    }
}
