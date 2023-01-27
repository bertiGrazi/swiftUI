//
//  OnboardingView.swift
//  Restart
//
//  Created by Grazielli Berti on 27/01/23.
//

import SwiftUI

struct OnboardingView: View {
    /// This true value will only be added to the property when the program does not find the ONBOARDING key previously set in the device's permanent storage. `
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardinViewActive = false
                
            }) {
                Text("Start")
            }
        } //: VSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
