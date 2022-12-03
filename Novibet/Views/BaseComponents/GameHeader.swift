//
//  GameHeader.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct GameHeader: View {
    @State var sport : String 
    @State var num : String 
    @Binding var isHidden : Bool
    @State var gameLeague: String 
    var body: some View {
        header
    }
    
    var header: some View{
        VStack(spacing: 0){
            title
            league
        }
        .clipShape(RoundedRectangle(cornerRadius: CGFloat(.gameContainerRadius)))
    }
    
    var title: some View{
        HStack{
            Image((sport == "Ποδόσφαιρο") ? .soccer : .basketball)
                .resizable()
                .frame(width: CGFloat(.ballIconWidth),height: CGFloat(.ballIconHeight))
            Text(sport)
                .customFont(.helveticaBold, .normalFontSize)
                .foregroundColor(.white)
                .customOpacity(.almostFullOpacity)
            Spacer()
            gameNum
            icon
         
        }
        .customPadding(.horizontal, .screenHorizontalPadding)
        .customPadding(.vertical, .headlineContainerVerticalPadding)
        .background(Color.theme.novibetFadeBlue)
        
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
    
    var icon : some View{
        Image(systemName: isHidden ?  "chevron.down" : "chevron.up")
            .customFont(.helvetica, .smallFontSize)
            .foregroundColor(.white)
            .customOpacity(.halfOpacity)
            .onTapGesture {
                isHidden.toggle()
            }
    }
    
    var gameNum: some View{
        ZStack{
            Circle()
                .stroke(Color.white.opacity(Double(.almostFullOpacity)),lineWidth: 1.5)
                .frame(width:25,height:25)
            Text(num)
                .customFont(.helvetica, .tinyFontSize)
                .foregroundColor(.white)
                .customOpacity(.almostFullOpacity)
        }
    }
}

//struct GameHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        GameHeader()
//    }
//}
