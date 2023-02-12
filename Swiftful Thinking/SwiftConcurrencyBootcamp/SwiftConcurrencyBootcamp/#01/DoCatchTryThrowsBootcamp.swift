//
//  DoCatchTryThrowsBootcamp.swift
//  SwiftConcurrencyBootcamp
//
//  Created by Grazi  Berti on 12/02/23.
//

import SwiftUI

//do = fazer
//catch = pegar
// try = tentar
//throws = lances

class  DoCatchTryThrowsBootcampManager {
    var isActive: Bool = true
    
    func getTitle() -> String? {
        if isActive {
            return "Grazielli Lima Berti"
        } else {
            return nil
        }
    }
}

class DoCatchTryThrowsBootcampViewModel: ObservableObject {
    @Published var text: String = "Grazielli"
    let manager = DoCatchTryThrowsBootcampManager()
    
    func fetchTitle() {
        let newTitle = manager.getTitle()
        if let myNewTitle = newTitle {
            self.text = myNewTitle
        }
    }
}

struct DoCatchTryThrowsBootcamp: View {
    @StateObject var viewModel = DoCatchTryThrowsBootcampViewModel()
    
    var body: some View {
        Text(viewModel.text)
            .padding()
            .frame(width: 300, height: 300, alignment: .center)
            .background(.purple)
            .onTapGesture {
                viewModel.fetchTitle()
            }
    }
}

struct DoCatchTryThrowsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DoCatchTryThrowsBootcamp()
    }
}
