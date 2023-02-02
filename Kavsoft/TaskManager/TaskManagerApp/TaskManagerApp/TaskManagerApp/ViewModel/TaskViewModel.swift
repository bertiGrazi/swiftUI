//
//  TaskViewModel.swift
//  TaskManagerApp
//
//  Created by Grazi  Berti on 02/02/23.
//

import SwiftUI
import CoreData

class TaskViewModel: ObservableObject {
    @Published var currentTab: String = "Today"
    
    //MARK: New Task Properties
    @Published var openEditTask: Bool = false
    @Published var taskTitle: String = ""
    @Published var taskColor: String = "Yellow"
    @Published var taskDeadline: Date = Date()
    @Published var taskTyoe: String = "Basic"
}
