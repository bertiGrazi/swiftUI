//
//  RHMyRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 01/03/23.
//

import SwiftUI

struct RHMyRequestView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color("Background_Gray")
                .ignoresSafeArea()
            
            VStack(spacing: 4) {
                headerView
                
                RHStatusRequestView(
                    iconIcone: Image(systemName: "hourglass"),
                    statusText:  "EM ANDAMENTO",
                    iconColor:  Color("Yellow")
                )
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
