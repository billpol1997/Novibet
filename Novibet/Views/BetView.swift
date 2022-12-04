//
//  BetView.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct BetView: View {
    //MARK: vars
    @State var currentPage : Int = 0
    @State var isHidden : Bool = false
    @ObservedObject var viewModel = BetVM()

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
            ScrollView(.horizontal){
                headlines
            }
            .customPadding(.bottom, .headlineContainerVerticalPadding)
            ScrollView{
                gameHeader
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
    @ViewBuilder
    var headlines : some View{
        HStack{
            HeadlineContainer(
                currPage: 0,
                probOne: viewModel.headlines.first?.bets?.first?.odds ?? "",
                probTwo: viewModel.headlines.first?.bets?[1].odds ?? "" ,
                teamOne: viewModel.headlines.first?.compOne ?? "",
                teamTwo: viewModel.headlines.first?.compTwo ?? "",
                time: viewModel.headlines.first?.startTime ?? "")
            
            headlineloop
          
       
        }
    }
    
    @ViewBuilder
    var headlineloop: some View{
        if(viewModel.isTimeToUpdate){
            ForEach(viewModel.updatedHeadlines.first?.betArr ?? [],id: \.id){ headline in
                HeadlineContainer(
                    currPage: currentPage ,
                    probOne:  "",
                    probTwo: "" ,
                    teamOne: headline.compOne ?? "" ,
                    teamTwo: headline.compTwo ?? "",
                    time: headline.startTime ?? "")
                
                
            }
        }
    }

    //MARK: List of matches
    var gameHeader : some View{
        VStack{
            ForEach(viewModel.headers,id: \.id){ header in
                VStack{
                    GameHeader(sport: header.sport, num: "\(header.competitions.count)", isHidden: $isHidden)
                    if !isHidden {
                        ForEach(header.competitions,id: \.id){ index in
                            GameContainer(
                                probOne: index.events.first?.markets.first?.bets.first?.odds ?? "",
                                probX: index.events.first?.markets.first?.bets[1].odds,
                                probTwo: index.events.first?.markets.first?.bets[2].odds ?? "",
                                teamOne: index.events.first?.captions.compOne ?? "",
                                teamTwo: index.events.first?.captions.compTwo ?? "",
                                time: String(index.events.first?.liveData.elapseTime.prefix(5) ?? ""),
                                scoreOne: String(index.events.first?.liveData.home ?? 7) ,
                                scroreTwo: String(index.events.first?.liveData.away ?? 7) ,
                                gameLeague: index.region)
                        }
                    }
                   
                }

            }
        }
        
        
    }
}

struct BetView_Previews: PreviewProvider {
    static var previews: some View {
        BetView()
    }
}
