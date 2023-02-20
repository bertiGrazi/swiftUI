//
//  HomeView.swift
//  Crypto App
//
//  Created by Grazi  Berti on 14/02/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    @State private var showPorfolio: Bool = false
    
    var body: some View {
        ZStack {
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                homeHeader
                
                columnTitles
                
                if !showPorfolio {
                    allCoinslist
                    .transition(.move(edge: .leading))
                    
                }
                if showPorfolio {
                    porfolioCoinslist
                        .transition(.move(edge: .trailing))
                }
                    Spacer(minLength: 0)
            }
            
            if viewModel.isLoading {
                ProgressView("Loading")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
        .preferredColorScheme(.dark)
        
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPorfolio ? "plus" : "info")
                .animation(.none)
            Spacer()
            Text("Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPorfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPorfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinslist: some View {
        List {
            ForEach(viewModel.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var porfolioCoinslist: some View {
        List {
            ForEach(viewModel.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var columnTitles: some View {
        HStack {
            Text("Coin")
            Spacer()
            if showPorfolio {
                Text("Holdings")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width / 3, alignment: .trailing)
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .padding(.horizontal)
    }
}
