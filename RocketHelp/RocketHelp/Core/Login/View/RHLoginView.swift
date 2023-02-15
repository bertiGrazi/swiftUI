//
//  ContentView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct RHLoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("Background_Gray")
                    .ignoresSafeArea()
                
                VStack(spacing: UIScreen.main.bounds.width >= 372 ? 80 : 40){
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
                                RHTextFieldView(textField: TextField("E-mail", text: $email), imageName: "envelope.fill", height: 56.0, typeKeyborad: .emailAddress)
                                
                                
                                RHTextFieldView(textField: TextField("Senha", text: $password), imageName: "key.fill", height: 56.0, typeKeyborad: .numberPad)
                            }
                            .padding(10)
                            
                            NavigationLink(destination: RHRequestView(), tag: 1, selection: $selection) {
                                Button(action: {
                                    self.selection = 1
                                }) {
                                    ButtonView(textButton: "Entrar") {
                                        self.selection = 1
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RHLoginView()
    }
}
