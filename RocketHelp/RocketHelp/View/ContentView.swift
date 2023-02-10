//
//  ContentView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("Background_Gray")
                .ignoresSafeArea()
            
            VStack(spacing: 80){
                Image("Logo")
                    .frame(width: 163, height: 83)
                    .padding(.vertical, 30)
                
                VStack(spacing: 16){
                    Text("Acesse a sua conta")
                        .foregroundColor(.white)
                        .bold()
                    .font(.title3)
                    
                    
                    VStack(spacing: 32) {
                        VStack(spacing: 16){
                            TextFieldView(textField: TextField("E-mail", text: $email), imageName: "envelope.fill", height: 56.0, typeKeyborad: .emailAddress)
                                

                            TextFieldView(textField: TextField("Senha", text: $password), imageName: "key.fill", height: 56.0, typeKeyborad: .numberPad)
                        }
                        .padding(10)
                        ButtonView(textButton: "Entrar")
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
