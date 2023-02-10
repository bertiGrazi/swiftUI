//
//  TextFieldView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct TextFieldView: View {
    var textField: TextField<Text>
    var imageName: String
    var height: CGFloat
    var typeKeyborad: UIKeyboardType
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(Color("Gray_300"))
            
            textField
            }
            .padding()
            .background(Color("Background"))
            .foregroundColor(Color("Gray_300"))
            .cornerRadius(10)
            .frame(height: height)
            .keyboardType(typeKeyborad)
        }
}
