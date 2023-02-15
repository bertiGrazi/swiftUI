//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Grazi  Berti on 15/02/23.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel

    var body: some View {
        Text(coin.name)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
    }
}
