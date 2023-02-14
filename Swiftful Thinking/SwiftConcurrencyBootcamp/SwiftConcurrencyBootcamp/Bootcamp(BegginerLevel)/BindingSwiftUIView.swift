//
//  BindingSwiftUIView.swift
//  SwiftConcurrencyBootcamp
//
//  Created by Grazi  Berti on 14/02/23.
//

import SwiftUI

struct BindingSwiftUIView: View {
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                backgroundColor = Color.orange
            }, label:  {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(10)
            })
        }
                   
    }
}

struct BindingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BindingSwiftUIView()
    }
}
