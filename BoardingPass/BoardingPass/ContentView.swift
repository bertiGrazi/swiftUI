//
//  ContentView.swift
//  BoardingPass
//
//  Created by Grazi  Berti on 08/02/23.
//

import SwiftUI

struct ContentView: View {
    static let gradientStart = Color(red: 130/255, green: 87/255, blue: 229/255)
    static let gradientEnd = Color(red: 39/255, green:  26/255, blue: 69/255)
    
    var body: some View {
        Color.purple
            .ignoresSafeArea()
            .overlay {
                VStack(spacing: 20) {
                    Text("Cartão de Embarque")
                        .font(.title3)
                        .foregroundColor(.white)
                        .bold()
                    
                    HStack {
                        
                    }
                    .frame(width: 327, height: 191)
                    .background(.white)
                    .cornerRadius(24)
                    .offset(x: 0, y: 0)
                    
                    HStack {
                        
                    }
                    .frame(width: 327, height: 84)
                    .background(.white)
                    .cornerRadius(24)
                    
                    
                    HStack {
                        
                    }
                    .frame(width: 327, height: 191)
                    .background(.white)
                    .cornerRadius(24)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
