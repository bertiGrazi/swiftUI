//
//  CharactersView.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 06/02/23.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    
                    HStack(spacing: 10) {
                        //Search Baar...
                        Image(systemName: "magnifyingglass"
                        )
                        .foregroundColor(.gray)
                        
                        TextField("Search Character", text: $homeData.searchQuery)
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .backgroundStyle(Color.white)
                //Shadows
                .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.06), radius: 5, x: -5, y: -5)
            }
            .padding()
            .navigationTitle("Marvel")
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
