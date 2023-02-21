//
//  NewRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 21/02/23.
//

import SwiftUI

struct NewRequestView: View {
    @State var assetNumber: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Background_Gray")
                .ignoresSafeArea()
            
            VStack {
                headerView
                
                VStack {
                    RHTextFieldView(
                        textField: TextField("Número do Patrimônio", text: $assetNumber),
                        imageName: "",
                        height: 56,
                        typeKeyborad: .decimalPad
                    )
                    .padding()
                }
            }
        }
    }
}

struct NewRequestView_Previews: PreviewProvider {
    static var previews: some View {
        NewRequestView()
    }
}

extension NewRequestView {
    private var headerView: some View {
        HStack(alignment: .center, spacing: 100) {
            Button {
                print("login out")
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .padding()
            }
            
            
            
            Text("Solicitação")
                .foregroundColor(.white)
                .font(.title3)
                .bold()
            
            Spacer(minLength: 0)
        }
        .padding(.horizontal, 20)
        .frame(height: 88)
        .background(Color("Background_Gray"))
    }
}
