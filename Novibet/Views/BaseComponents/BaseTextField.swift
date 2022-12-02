//
//  BaseTextField.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

struct BaseTextField: View {
    //MARK: vars
    var title: Text?
    var textHint: String?
    @Binding var text: String
    var isPassword: Bool
    @State var isSecure: Bool
    var secure: Bool
    
    //MARK: init
    init(title: Text? = nil, textHint: String? = nil,text: Binding<String>, isPassword: Bool, isSecure: Bool, secure: Bool) {
        self.title = title
        self.textHint = textHint
        self._text = text
        self.isPassword = isPassword
        self.isSecure = isSecure
        self.secure = secure
    }
    var body: some View {
        baseText
    }
    
    // MARK: Simple textfield
    var baseText: some View{
        VStack{
            HStack(alignment: .firstTextBaseline,spacing: 10){
                title!
                    .customFont(.helveticaBold, .normalFontMaxSize)
                    .foregroundColor(.white)
                    .customOpacity(.almostFullOpacity)
                Spacer()
                
            }
            HStack{
                secureCheck
                Spacer()
                showIcon.customPadding(.bottom, .passwordIconPadding)
            }
            underlineIndicator
        }
    }
    
    // MARK: show/hide icon
    @ViewBuilder
    var showIcon: some View{
        if isPassword{
            Image(systemName: self.isSecure ? "eye.slash" : "eye")
                .onTapGesture {
                    isSecure.toggle()
                }
                .foregroundColor(Color.blue)
        }
    }
    
    // MARK: Check for show/hide
    @ViewBuilder
    var secureCheck: some View{
        if isSecure{
            SecureField(textHint ?? " ",text: self.$text)
                .customFont(.helvetica, .normalFontSize)
                .foregroundColor(.white)
        }else{
            TextField(textHint ?? " ",text: self.$text)
                .customFont(.helvetica, .normalFontSize)
                .foregroundColor(.white)
        }
    }
    
    var underlineIndicator: some View{
        Divider()
            .frame(height: CGFloat(.indicatorHeight))
            .customPadding(.horizontal, .indicatorHorizontalPadding)
            .background(Color.blue)
            .customOpacity(.halfOpacity)
    }
}

//struct BaseTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        BaseTextField()
//    }
//}
