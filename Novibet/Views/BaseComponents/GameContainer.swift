//
//  GameContainer.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct GameContainer: View {
    @State var probOne : String
    @State var probX : String?
    @State var probTwo: String
    @State var teamOne: String
    @State var teamTwo: String
    @State var time : String
    @State var scoreOne : String
    @State var scroreTwo: String
    @State var gameLeague: String
    var body: some View {
        league
        container
    }
    
    var container: some View{
        VStack{
            match
            probs
                .customPadding(.top, .gameContainerProbsTopPadding)
        }
        .customFont(.helvetica, .normalFontSize)
        .foregroundColor(.white.opacity(Double(.almostFullOpacity)))
        .customOpacity(.almostFullOpacity)
        .customPadding(.horizontal, .probContainerHorizontalPadding)
        .customPadding(.vertical, .headlineContainerVerticalPadding)
        .background(Color.theme.novibetFadeGrey)
        .clipShape(RoundedRectangle(cornerRadius: CGFloat(.gameContainerRadius)))
    }
    
    var league: some View{
        HStack{
            Text(gameLeague)
                .customFont(.helveticaLight, .normalFontSize)
                .foregroundColor(.white)
                .customOpacity(.mediumOpacity)
            Spacer()
        }
        .customPadding(.horizontal, .screenHorizontalPadding)
        .customPadding(.vertical, .probContainerVerticalPadding)
        .background(Color.theme.novibetGrey)
    }
    
    var match : some View{
        HStack(alignment: .bottom){
            VStack{
                Text(teamOne)
                Spacer()
                Text(teamTwo)
            }
            VStack(spacing: 10){
                Text(scoreOne)
                Spacer()
                Text(scroreTwo)
            }
            Spacer()
            Text(time)
                .customOpacity(.halfOpacity)
            
        }
    }
    
    @ViewBuilder
    var probs: some View{
        HStack{
            BaseProbContainer(teamProb: .one, prob: probOne, isWhiteBackground: false)
            if (probX != nil){
                BaseProbContainer(teamProb: .x, prob: probX ?? " ", isWhiteBackground: false)
            }
            BaseProbContainer(teamProb: .two, prob: probTwo, isWhiteBackground: false)
        }
    }
    
}

//struct GameContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        GameContainer()
//    }
//}
