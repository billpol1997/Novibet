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
    var body: some View {
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
    
    var match : some View{
        HStack(alignment: .bottom){
            VStack(spacing: 10){
                HStack{
                    Text(teamOne)
                    Spacer()
                    Text(scoreOne)
                    Spacer()
                }
                HStack{
                    Text(teamTwo)
                    Spacer()
                    Text(scroreTwo)
                    Spacer()
                }
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
