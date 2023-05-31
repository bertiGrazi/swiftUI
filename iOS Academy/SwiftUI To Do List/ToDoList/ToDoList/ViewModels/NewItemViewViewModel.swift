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
    init() {}
}
