//
//  BindingSwiftUIView.swift
//  SwiftConcurrencyBootcamp
//
//  Created by Grazi  Berti on 14/02/23.
//

import SwiftUI

struct BindingSwiftUIView: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BindingSwiftUIView()
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.cyan
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE!!!!"
        }, label:  {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
