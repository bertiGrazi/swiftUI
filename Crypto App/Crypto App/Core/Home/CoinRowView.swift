//
//  CoinRowView.swift
//  Crypto App
//
//  Created by Grazi  Berti on 15/02/23.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingColumn: Bool

    var body: some View {
        HStack(spacing: 0) {
            leftCoulm
            Spacer()
            if showHoldingColumn {
                centerColum
            }
            rightColum
        }
        .font(.subheadline)
        .padding()
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingColumn: true)
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portrait)
                .previewLayout(.sizeThatFits)
        }
      
    }
}

extension CoinRowView {
    private var leftCoulm: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColum: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColum: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPorcentString() ?? "")
                .foregroundColor(
                  (coin.priceChangePercentage24H ?? 0) >= 0 ?
                  Color.theme.green : Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3, alignment: .trailing)
    }
}
