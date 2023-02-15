//
//  PopoverBootcamp.swift
//  SwiftConcurrencyBootcamp
//
//  Created by Grazi  Berti on 15/02/23.
//

// sheets
//animations
//transitions

import SwiftUI

struct PopoverBootcamp: View {
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    
                }
                .font(.largeTitle)
                Spacer()
            }
        }
    }
}

struct NewScreen: View {
    var body: some View {
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
        }
    }
}
struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //PopoverBootcamp()
        NewScreen()
    }
}
