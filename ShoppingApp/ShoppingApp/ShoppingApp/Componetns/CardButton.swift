//
//  CardButton.swift
//  ShoppingApp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct CardButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 2)
    }
}
