//
//  HomeView.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 06/02/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            //Character views...
            Text("Characters")
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Chracters")
                }
            
            Text("Comics")
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                        Text("Comics")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
