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
    
    func getTitle() -> (title: String?, error: Error?) {
        if isActive {
            return ("Grazielli Lima Berti", nil)
        } else {
            return (nil, URLError(.badURL))
        }
    }
}

class DoCatchTryThrowsBootcampViewModel: ObservableObject {
    @Published var text: String = "Name"
    let manager = DoCatchTryThrowsBootcampManager()
    
    func fetchTitle() {
        let resultRequest = manager.getTitle()
        if let newTitle = resultRequest.title {
            self.text = newTitle
        } else if let error = resultRequest.error {
            self.text = error.localizedDescription
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
