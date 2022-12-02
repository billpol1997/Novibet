//
//  ContentView.swift
//  Novibet
//
//  Created by Bill on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        navStack
    }
    
    var navStack: some View{
        NavigationStack{
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
