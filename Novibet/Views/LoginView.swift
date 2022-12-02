//
//  LoginView.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginVM()
    private var con = Constants()
    
    var body: some View {
        loginScreen
    }
    
    var loginScreen : some View{
        ZStack{
            LinearGradient(colors: [Color.theme.logo,Color.theme.background,Color.theme.novibetBlack], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                logo
                login
                Spacer()
            } 
        }
    }
    
    var login: some View{
        VStack{
            textFields
            Spacer()
            loginButton
        }
        .customPadding(.horizontal, .screenHorizontalPadding)
    }
    
    var logo : some View{
        VStack {
            LogoTopBar().ignoresSafeArea()
                .customPadding(.bottom, .logoBottomPadding)
        }
    }
    
    var textFields: some View{
        VStack(spacing: 20){
            BaseTextField(title: Text(.username), textHint: con.usernameHint, text: $viewModel.username, isPassword: false, isSecure: false, secure: false)
            BaseTextField(title: Text(.password), textHint: con.passwordHint, text: $viewModel.password, isPassword: true, isSecure: true, secure: true)
        }
    }
    
    var loginButton: some View{
        Button{
            checkButton()
        } label: {
            Text(.login)
                .customFont(.helveticaBold, .normalFontMaxSize)
                .foregroundColor(.white)
                .customOpacity(.almostFullOpacity)
                .customPadding(.vertical, .loginButtonVerticalPadding)
                .frame(width: CGFloat(.loginbuttonWidth),alignment: .center)
                .background(LinearGradient(colors: [Color.blue,Color.blue.opacity(0.8),Color.blue.opacity(0.6)], startPoint: .top, endPoint: .bottom))
                .clipShape( RoundedRectangle(cornerRadius: CGFloat(.loginByttonRadius)))
                .opacity(viewModel.isLoginButtonActive ? Double(.fullOpacity) : Double(.halfOpacity))
        }
        .customPadding(.bottom, .loginButtonBottomPadding)
        //.disabled(viewModel.isLoginButtonActive)
    }
    
    func checkButton(){
        if !viewModel.isLoginAvailable{
           // viewModel.isLoginButtonActive = false
        }else{
            viewModel.login(){ error in
                if let error = error{
                    print(error)
                }else{
                    print("Success login")
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
