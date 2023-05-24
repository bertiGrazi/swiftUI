//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        print("Called")
    }
    
    func validate() {
        
    }
}
