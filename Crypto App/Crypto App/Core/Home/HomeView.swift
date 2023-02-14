//
//  HomeView.swift
//  Crypto App
//
//  Created by Grazi  Berti on 14/02/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("Header")
                    Spacer(minLength: 0)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
