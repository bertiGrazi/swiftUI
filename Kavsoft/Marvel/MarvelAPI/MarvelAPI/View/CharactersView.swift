//
//  CharactersView.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 06/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

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
                        
                        TextField("Search Character Names", text: $homeData.searchQuery)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .backgroundStyle(Color.white)
                //Shadows
                .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.06), radius: 5, x: -5, y: -5)
                
                if let characters = homeData.fetchedCharacters {
                    if characters.isEmpty {
                        // No results...
                        Text("No Results Found")
                            .padding(.top, 20)
                    } else {
                        ForEach(characters) { data in
                            CharacterRowView(character: data)
                        }
                    }
                } else {
                    if homeData.searchQuery != "" {
                        //Loading Screen...
                        ProgressView()
                            .padding(.top, 20)
                    }
                }
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

struct CharacterRowView: View {
    var character: Character
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            WebImage(url: extractImage(data: character.thumbnail))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(character.name)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(character.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
            }) //: VStack
            
            Spacer(minLength: 0)
        } //: HStack
    }
    
    func extractImage(data: [String: String]) -> URL {
        let path = data["path"] ?? ""
        let ext = data["extension"] ?? ""
        
        return URL(string: "\(path).\(ext)")!
    }
}
