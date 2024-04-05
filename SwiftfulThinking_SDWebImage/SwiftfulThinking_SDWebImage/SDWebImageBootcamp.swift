//
//  SDWebImageBootcamp.swift
//  SwiftfulThinking_SDWebImage
//
//  Created by Grazi  Berti on 05/04/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        SDWebImageLoader(url: url, contentMode: contentMode)
        
    }
}

fileprivate struct SDWebImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
            image.resizable()
        } placeholder: {
                Rectangle().foregroundColor(.gray)
        }
        .indicator(.activity)
        .transition(.fade(duration: 0.5))
        .aspectRatio(contentMode: contentMode)
    }
}

struct SDWebImageBootcamp: View {
    var body: some View {
        ImageLoader(
            url: "https://picsum.photos/id/237/200/300",
            contentMode: .fit
        )
            .frame(width: 300, height: 300, alignment: .center)
        
        
    }
}

#Preview {
    SDWebImageBootcamp()
}
