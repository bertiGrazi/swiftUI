//
//  ContentView.swift
//  AluraViagens
//
//  Created by Grazielli Berti on 19/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("alura viagens")
            Text("ESPECIAL")
            Text("BRASIL")
            
            List {
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("Rio de Janeiro")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
