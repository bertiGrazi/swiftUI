//
//  NewRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 21/02/23.
//

import SwiftUI

struct NewRequestView: View {
    @State var assetNumber: String = ""
    @State var problemDescription: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Background_Gray")
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                headerView
                
                VStack(spacing: 32) {
                    TextField("Número do Patrimônio", text: self.$assetNumber)
                        .frame(height: 56)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 16)
                        .cornerRadius(6)
                        .background(Color("Background"))
                        .padding([.horizontal], 24)
                    
                    
                    TextField("Descrição do problema", text: self.$assetNumber)
                        .frame(height: 400)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 16)
                        .cornerRadius(6)
                        .background(Color("Background"))
                        .padding([.horizontal], 24)
                }
                
                Spacer()
                
                //Buttom
                RHButtonView(textButton: "Nova solicitação", actionButton: {})
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
        .padding(.horizontal, 10)
        .frame(height: 88)
        .background(Color("Background_Gray"))
    }
}
