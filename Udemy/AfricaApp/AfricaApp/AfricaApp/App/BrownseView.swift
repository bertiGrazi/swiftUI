//
//  ContentView.swift
//  AfricaApp
//
//  Created by Grazielli Berti on 01/02/23.
//

import SwiftUI

struct BrownseView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }  //: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BrownseView()
    }
}
