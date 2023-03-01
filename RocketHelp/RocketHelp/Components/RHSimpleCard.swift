//
//  RHSimpleCard.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 01/03/23.
//

import SwiftUI

struct RHSimpleCard: View {
    var iconIcone: Image
    var titleCard: String
    var descriptionCard: String
    var registerData: String?
    var showDivider: Bool = false
    var showDataRegister: Bool = false
    
    public init(iconIcone: Image, titleCard: String, descriptionCard: String, registerData: String, showDivider: Bool, showDataRegister: Bool) {
        self.iconIcone = iconIcone
        self.titleCard = titleCard
        self.descriptionCard = descriptionCard
        self.registerData = registerData
        self.showDivider = showDivider
        self.showDataRegister = showDataRegister
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                iconIcone
                    .foregroundColor(Color("Purple"))
                    .frame(width: 18, height: 15)
                
                Text(titleCard)
                    .font(.callout)
                    .foregroundColor(Color("Gray_300"))
            }
            
            Text(descriptionCard)
                .font(.callout)
                .foregroundColor(.white)
            
            if showDivider {
                Divider()
                    .background()
                    .padding(.vertical, 12)
            }
            
            if showDataRegister {
                Text((registerData == nil ? "" : registerData) ?? "")
                    .font(.callout)
                    .foregroundColor(Color("Gray_300"))
            }
        }
        .padding()
        .frame(width: 380)
        .background(Color("Black_Light"))
        .padding(.horizontal, 24)
    }
}

struct RHSimpleCard_Previews: PreviewProvider {
    static var previews: some View {
        RHSimpleCard(iconIcone: Image(systemName: "laptopcomputer.and.iphone"), titleCard: "EQUIPAMENTO", descriptionCard: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", registerData: "Registrado em 20/11/2022 às 14:30",  showDivider: true, showDataRegister: true)
            .previewLayout(.sizeThatFits)
    }
}
