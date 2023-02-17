//
//  ApplicationCardView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 17/02/23.
//

import SwiftUI

struct RHApplicationCardView: View {
    var colorCard: Color = Color("Yellow")
    var iconCard: Image = Image(systemName: "clock")
    
    public init(colorCard: Color, iconCard: Image) {
        self.colorCard = colorCard
        self.iconCard = iconCard
    }
    
    var body: some View {
        HStack(spacing: 26) {
            Rectangle()
                .fill(colorCard)
                .frame(width: 10)
                
            
            VStack(alignment: .leading,spacing: 8) {
                Text("Patrimônio 147456")
                    .foregroundColor(.white)
                    .bold()
                
                HStack(alignment: .center, spacing: 4) {
                    Image(systemName: "clock")
                        .foregroundColor(Color("Gray_300"))
                    Text("20/01/22 às 14h")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 48, height: 48)
                    .padding(.trailing, 26)
                    .foregroundColor(Color("Gray_400"))
                
                iconCard
                    .foregroundColor(colorCard)
                    .padding(.trailing, 24)
            }
                
            
        }
        .frame(width: 380, height: 88)
        .background(Color("Black_Light"))
        .cornerRadius(8)
    }
}

struct RHApplicationCardView_Previews: PreviewProvider {
    static var previews: some View {
        //Card em andamento
        RHApplicationCardView(colorCard: Color("Yellow"), iconCard: Image(systemName: "hourglass"))
            .previewLayout(.sizeThatFits)
        
        //Card Finalizado
        RHApplicationCardView(colorCard: Color("Green_700"), iconCard: Image(systemName: "checkmark.seal"))
            .previewLayout(.sizeThatFits)
    }
}
