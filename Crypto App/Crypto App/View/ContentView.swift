//
//  ContentView.swift
//  Crypto App
//
//  Created by Grazi  Berti on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            Text("Hello, world!!!!!!")
                .padding()
                .foregroundColor(Color.theme.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
