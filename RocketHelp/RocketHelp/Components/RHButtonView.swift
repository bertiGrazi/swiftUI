//
//  ButtonView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

public struct ButtonView: View {
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
        .padding(10)
        .frame(width: 364, height: 56)
        .background(Color("Green_700"))
        .cornerRadius(10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(textButton: "Entrar", actionButton: {})
    }
}
