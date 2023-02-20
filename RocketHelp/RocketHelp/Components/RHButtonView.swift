//
//  ButtonView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

public struct RHButtonView: View {
    var textButton: String = ""
    var actionButton: () -> Void
    
    public var body: some View {
        HStack {
            Button(action: actionButton) {
                Text(textButton)
                    .bold()
                    .foregroundColor(.white)
            }
        }
        .frame(width: 364, height: 56)
        .background(Color("Green_700"))
        .cornerRadius(10)
        .padding(20)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RHButtonView(textButton: "Entrar", actionButton: {})
            .previewLayout(.sizeThatFits)
    }
}
