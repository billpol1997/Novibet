//
//  PageIndicator.swift
//  Novibet
//
//  Created by Bill on 3/12/22.
//

import SwiftUI
import Foundation

struct PageIndicator: View {
    @State var currentPage : Int
    let numPages: Int

    private let spacing: CGFloat = 5
    private let dotSize: CGFloat = 6

    var body: some View {
        VStack {
            HStack( spacing: spacing) {
                ForEach(0 ..< numPages, id: \.self) {
                    DotIndicator(pageIndex: $0, isOn: self.$currentPage)
                        .frame(width: self.dotSize, height: self.dotSize)
                }
            }
        }
    }
}

struct DotIndicator: View {
    let pageIndex: Int
    
    @Binding var isOn: Int
    
    var body: some View {
        
        Button(action: {
            self.isOn = self.pageIndex
        }) {
            Circle()
                .foregroundColor((isOn == self.pageIndex) ? Color.theme.novibetRed : .white)
                .scaleEffect( isOn == pageIndex ? 1.1 : 1.0)
                .animation(.spring())
        }
        
    }
}

//struct PageIndicator_Previews: PreviewProvider {
//    static var previews: some View {
//        PageIndicator()
//    }
//}
