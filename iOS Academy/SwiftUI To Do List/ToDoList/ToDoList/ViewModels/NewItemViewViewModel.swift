//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import Foundation

///  ViewModel for list of items view
///  Primary tab
class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate = Date()
    @Published var showAlert: Bool = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
