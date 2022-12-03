//
//  BaseProbContainer.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct BaseProbContainer: View {
    @State var teamProb : teamEnum
    @State var prob : String
    @State var isWhiteBackground: Bool 
    var body: some View {
        container
    }
    
    var container: some View{
        HStack{
            Text(teamProb.team)
            Spacer()
            Text(prob)
            
        }
        .customFont(.helvetica, .smallFontSize)
        .foregroundColor(isWhiteBackground ? Color.theme.novibetBlack : .white)
        .customOpacity(.almostFullOpacity)
        .customPadding(.vertical, .probContainerVerticalPadding)
        .customPadding(.horizontal, .probContainerHorizontalPadding)
        .background(isWhiteBackground ? .white : Color.theme.novibetLightGrey)
        .clipShape(
            RoundedRectangle(cornerRadius: CGFloat(.probContainerRadius))
        )
    }
    
    enum teamEnum {
        case one
        case x
        case two
        
        var team : String{
            switch self{
            case .one:
                return "1"
            case .x:
                return "X"
            case .two:
                return "2"
            }
        }
    }
}

//struct BaseProbContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        BaseProbContainer()
//    }
//}
