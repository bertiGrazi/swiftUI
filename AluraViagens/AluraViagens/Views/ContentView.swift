//
//  ContentView.swift
//  AluraViagens
//
//  Created by Grazielli Berti on 19/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: 200)
                List(viagens) { viagem in
                    CellTravelView(viagem: viagem)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
