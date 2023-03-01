//
//  NewRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 21/02/23.
//

import SwiftUI

struct RHNewRequestView: View {
    @State var assetNumber: String = ""
    @State var problemDescription: String = ""
    @State var selection: Int? = nil
    
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
                NavigationLink(destination: RHMyRequestView(), tag: 1, selection: $selection) {
                    Button(action: {
                        self.selection = 1
                    }) {
                        RHButtonView(textButton: "Cadastrar") {
                            self.selection = 1
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NewRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RHNewRequestView()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

extension RHNewRequestView {
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
