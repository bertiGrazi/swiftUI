//
//  RHRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct RHRequestView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                ScrollView {
                    Text("Request View")
                        .foregroundColor(.white)
                        .bold()
                }
            }
        }
        
    }
}

struct RHRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RHRequestView()
    }
}
