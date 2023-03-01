//
//  RHStatusRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 01/03/23.
//

import SwiftUI

struct RHStatusRequestView: View {
    var iconIcone: Image = Image(systemName: "hourglass")
    var iconColor: Color = Color("Yellow")
    var statusText: String = "EM ANDAMENTO"
    
    
    public init(iconIcone: Image, statusText: String, iconColor: Color) {
        self.iconIcone = iconIcone
        self.statusText = statusText
        self.iconColor = iconColor
    }
    
    var body: some View {
        HStack {
            iconIcone
                .foregroundColor(iconColor)
                .frame(width: 12, height: 17)
            
            Text(statusText)
                .foregroundColor(iconColor)
                .font(.callout)
        }
        .padding(16)
        .frame(width: UIScreen.main.bounds.width, height: 54)
        .background(Color("Gray_350"))
    }
}

struct RHStatusRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RHStatusRequestView(
            iconIcone: Image(systemName: "hourglass"),
            statusText:  "EM ANDAMENTO",
            iconColor:  Color("Yellow"))
            .previewLayout(.sizeThatFits)
        
        RHStatusRequestView(
            iconIcone: Image(systemName: "checkmark.seal"),
            statusText:  "FINALIZADO",
            iconColor:  Color("Green_700"))
            .previewLayout(.sizeThatFits)
    }
}
