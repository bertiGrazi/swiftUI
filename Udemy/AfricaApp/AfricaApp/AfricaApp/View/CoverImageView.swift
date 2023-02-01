//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Grazielli Berti on 01/02/23.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                     .resizable()
                 .scaledToFit()
            } //:LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
