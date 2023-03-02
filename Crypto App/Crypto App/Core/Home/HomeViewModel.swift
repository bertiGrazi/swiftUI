//
//  HomeViewModel.swift
//  Crypto App
//
//  Created by Grazi  Berti on 20/02/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var isLoading: Bool = true
    
    private let dataService = CoinDataService()
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//            self.allCoins.append(DeveloperPreview.instance.coin)
//            self.portfolioCoins.append(DeveloperPreview.instance.coin)
            self.addSubscribers()
        }
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] returnCoins in
                self?.allCoins = returnCoins
                self?.portfolioCoins = returnCoins
                self?.isLoading = false
            }
            .store(in: &cancellable)
    }
}
