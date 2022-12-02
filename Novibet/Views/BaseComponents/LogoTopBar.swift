//
//  LogoTopBar.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

struct LogoTopBar: View {
    var body: some View {
        logo
    }
    
    var logo: some View{
        HStack{
            Spacer()
            Image(.NovibetLogo).resizable()
                .frame(width: CGFloat(.topBarLogoWidth), height: CGFloat(.topBarLogoHeight))
                .customPadding(.top, .logoInsideTopPadding)
            Spacer()
        }
        .background{
            Color.theme.logo
        }
    }
}

struct LogoTopBar_Previews: PreviewProvider {
    static var previews: some View {
        LogoTopBar()
    }
}
