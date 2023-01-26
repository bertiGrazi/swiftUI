//
//  ContentView.swift
//  GridView
//
//  Created by Grazi  Berti on 26/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Grid: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(1..<6) { i in
                        HStack {
                            Image("img\(i)").resizable().frame(width: geo.size.width / 2)
                            Image("img\(i)").resizable().frame(width: geo.size.width / 2)
                        }.frame(height: 200)
                    }
                }
            }
        }
    }
}
