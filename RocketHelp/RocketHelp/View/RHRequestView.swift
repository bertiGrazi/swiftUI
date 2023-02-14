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
                
                VStack {
                    HStack {
                        Image("logo_header")
                        
                        Spacer(minLength: 0)
                        Button {
                            print("login out")
                        } label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(Color("Background_LightGray"))
                        }
                    }
                    .padding(.horizontal, 20)
                    .frame(height: 80)
                    .background(Color("Background_Gray"))
                    
                    Spacer(minLength: 0)
                    
                }
            }
            .navigationBarBackButtonHidden(true)
    }
}

struct RHRequestView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RHRequestView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}
