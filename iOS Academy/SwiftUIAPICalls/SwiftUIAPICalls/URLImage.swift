//
//  URLImage.swift
//  SwiftUIAPICalls
//
//  Created by Grazielli Berti on 31/01/23.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    var body: some View {
        if let data = data, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
        } else {
            Image("")
                .resizable()
                .frame(width: 130, height: 70)
                .aspectRatio(contentMode: .fit)
                .background(Color.gray)
                .onAppear {
                    fetchImageData()
                }
        }
    }
    
    private func fetchImageData() {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        
        task.resume()
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(urlString: "")
    }
}
