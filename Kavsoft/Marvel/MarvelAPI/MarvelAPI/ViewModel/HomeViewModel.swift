//
//  HomeViewModel.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 06/02/23.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    @Published var searchQuery = ""
    
    var searchCancellable: AnyCancellable? = nil
    
    init() {
        searchCancellable = $searchQuery
            .removeDuplicates()
        //we dont need to fetch for every typing...
        // so it will wait for 0.5 after user ends typing...
            .debounce(for: 0.6, scheduler: RunLoop.main)
            .sink(receiveValue: { str in
                if str == "" {
                    //reset Data...
                } else {
                    //search Data..
                    print(str)
                }
            })
    }
}
