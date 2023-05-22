//
//  LoginView.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                // Login Form
                Form {
                    TextField("E-mail Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    
                }
                .offset(y: -50)
                
                //Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                .padding()
                
                Spacer()
                
            }
        }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
