//
//  HomeView.swift
//  Restart
//
//  Created by Grazielli Berti on 27/01/23.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Property
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardinViewActive = true
            }) {
                Text("Restart")
            }
        }
    } //: VSTACK
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
