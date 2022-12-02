//
//  BetView.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI

struct BetView: View {
    var body: some View {
        betScreen
            .navigationBarHidden(true)
    }
    
    var betScreen: some View{
        ZStack{
            LinearGradient(colors: [Color.theme.logo,Color.theme.background,Color.theme.novibetBlack], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                logo
                Spacer()
            }
        }
    }
    
    //MARK: Logo
    var logo : some View{
        VStack {
            LogoTopBar().ignoresSafeArea()
                .customPadding(.bottom, .logoBottomPadding)
        }
    }
}

struct BetView_Previews: PreviewProvider {
    static var previews: some View {
        BetView()
    }
}
