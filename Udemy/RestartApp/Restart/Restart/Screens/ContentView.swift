//
//  ContentView.swift
//  Restart
//
//  Created by Grazielli Berti on 27/01/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardinViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
