//
//  RHNavLogo.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 13/02/23.
//

import SwiftUI

struct RHNavLogo: View {
    var body: some View {
        VStack {
            Image("logo_header")
                .resizable()
                .aspectRatio(2, contentMode: .fit)
                .imageScale(.large)
        }
        .frame(width: 200, height: 54)
        .background(Color("Background"))
    }
}

struct RHNavLogo_Previews: PreviewProvider {
    static var previews: some View {
        RHNavLogo()
    }
}
