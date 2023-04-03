//
//  Login.swift
//  Crypto App
//
//  Created by Grazi  Berti on 03/04/23.
//

import SwiftUI

struct Login: View {
    /// View Properties
    @State private var activeIntro: PageIntro = pageIntro[0]
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            IntroView(intro: $activeIntro, size: size)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

/// Intro View
struct IntroView: View {
    @Binding var intro: PageIntro
    var size: CGSize
    
    var body: some View {
        VStack {
            //Image View
            GeometryReader {
                let size = $0.size
                
                Image(intro.introAssetImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: size.width, height: size.height)
            }
            
            //Title e Action`s
            VStack(alignment: .leading, spacing: 10) {
                Spacer(minLength: 0)
                
                Text(intro.title)
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Text(intro.subTitle)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top, 15)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
