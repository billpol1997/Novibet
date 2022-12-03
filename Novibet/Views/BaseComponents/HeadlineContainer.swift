//
//  HeadlinesContainer.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct HeadlineContainer: View {
    @State var pages : Int = 5
    @State var currPage : Int 
    @State var probOne : String
    @State var probX : String?
    @State var probTwo: String
    @State var teamOne: String
    @State var teamTwo: String
    @State var time : String
    var body: some View {
        headline
    }
    
    var headline: some View{
        VStack{
            pageInd
                .customPadding(.vertical, .pageIndVerticalPadding)
            match
            containers
            
            
        }
        .customFont(.helveticaBold, .normalFontSize)
        .foregroundColor(.white)
        .customOpacity(.almostFullOpacity)
        .customPadding(.horizontal, .probContainerHorizontalPadding)
        .customPadding(.vertical, .headlineContainerVerticalPadding)
        .background(Color.theme.novibetBlack)
        .clipShape(RoundedRectangle(cornerRadius: CGFloat(.headlineContainerRadius)))
    }
    
    var match: some View{
        HStack{
            VStack{
                Text(teamOne)
                Text(teamTwo)
            }
            Spacer()
            Text(time)
        }
    }
    
    @ViewBuilder
    var containers : some View{
        HStack{
            BaseProbContainer(teamProb: .one, prob: probOne, isWhiteBackground: true)
            if(probX != nil){
                BaseProbContainer(teamProb: .x, prob: probX ?? "-", isWhiteBackground: true)
            }
            BaseProbContainer(teamProb: .two, prob: probTwo, isWhiteBackground: true)
        }
    }
    
    var pageInd: some View{
        HStack{
            PageIndicator(currentPage: currPage, numPages: pages)
            Spacer()
        }
    }
}

//struct HeadlineContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        HeadlineContainer()
//    }
//}
