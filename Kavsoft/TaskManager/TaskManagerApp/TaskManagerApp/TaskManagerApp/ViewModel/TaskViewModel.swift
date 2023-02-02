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
}
