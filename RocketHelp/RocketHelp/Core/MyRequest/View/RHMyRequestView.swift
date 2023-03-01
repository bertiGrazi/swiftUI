//
//  RHMyRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 01/03/23.
//

import SwiftUI

struct RHMyRequestView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                headerView
                
                VStack(spacing: 20) {
                    RHStatusRequestView(
                        iconIcone: Image(systemName: "hourglass"),
                        statusText:  "EM ANDAMENTO",
                        iconColor:  Color("Yellow")
                    )
                    
                    VStack(spacing: 24) {
                        RHSimpleCard(iconIcone: Image(systemName: "laptopcomputer.and.iphone"), titleCard: "EQUIPAMENTO", descriptionCard: "Patrimônio 123456", registerData: "",  showDivider: false, showDataRegister: false)
                        
                        RHSimpleCard(iconIcone: Image(systemName: "laptopcomputer.and.iphone"), titleCard: "DESCRIÇÃO DO PROBLEMA", descriptionCard: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", registerData: "Registrado em 20/11/2022 às 14:30",  showDivider: true, showDataRegister: true)
                            
                        
                        RHSimpleCard(iconIcone: Image(systemName: "checkmark.seal"), titleCard: "SOLUÇÃO", descriptionCard: "Descrição da solução", registerData: "",  showDivider: false, showDataRegister: false)
                    }
                    
                    
                    Spacer()
                    
                    //Buttom
                    NavigationLink(destination: RHNewRequestView(), tag: 1, selection: $selection) {
                        Button(action: {
                            self.selection = 1
                        }) {
                            RHButtonView(textButton: "Nova solicitação") {
                                self.selection = 1
                            }
                        }
                    }
                }
            }
        }
    }
}

struct RHMyRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RHMyRequestView()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

extension RHMyRequestView {
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
