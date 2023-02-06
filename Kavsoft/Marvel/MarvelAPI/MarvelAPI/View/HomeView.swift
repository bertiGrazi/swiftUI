//
//  HomeView.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 06/02/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeData = HomeViewModel()
    
    var body: some View {
        TabView {
            //Character views...
            CharactersView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Chracters")
                }
            //setting Environment object
            // so that we can access data on character view...
                .environmentObject(homeData)
            
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
