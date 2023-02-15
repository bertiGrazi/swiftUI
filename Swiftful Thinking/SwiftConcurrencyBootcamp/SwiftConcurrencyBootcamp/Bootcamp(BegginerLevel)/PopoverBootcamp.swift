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
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
        }
        // METHOD 1 - SHEET
        .sheet(isPresented: $showNewScreen) {
            NewScreen()
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}
struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
        //NewScreen()
    }
}
