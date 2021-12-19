//
//  CellTravelView.swift
//  AluraViagens
//
//  Created by Grazielli Berti on 19/12/21.
//

import SwiftUI

struct CellTravelView: View {
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable() //ocupa somente o espaço disponivel
                .frame(height: 125)
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CellTravelView_Previews: PreviewProvider {
    static var previews: some View {
        CellTravelView(viagem: viagens[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
