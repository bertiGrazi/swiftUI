//
//  DynamicFilteredView.swift
//  TaskManagerApp
//
//  Created by Grazi  Berti on 03/02/23.
//

import SwiftUI
import CoreData

struct DynamicFilteredView<Content: View, T>: View where T: NSManagedObject {
    //MARK: Core Data Request
    @FetchRequest var request: FetchedResults<T>
    let content: (T) -> Content
    
    //MARK: Building Custom ForEach which will give Core Data object to build View
    init(currentTab: String, @ViewBuilder content: @escaping (T) -> Content) {
        //MARK: Predicate to Filter current date Tasks
        let calendar = Calendar.current
        var predicate: NSPredicate!
        
        if currentTab == "Today" {
            let today = calendar.startOfDay(for: Date())
            let tommorow = calendar.date(byAdding: .day, value: 1, to: today)!
            
            //Filter key
            let filterKey = "deadline"
            //This will fetch task between today and tommorow with is 24 HRS
            // 0 -false, 1-true
            predicate = NSPredicate(
                format: "\(filterKey) >= %@ AND \(filterKey) < %@ AND isCompleted == %i",
                argumentArray: [today, tommorow, 0]
            )
        } else if currentTab == "Upcoming" {
            let today = calendar.startOfDay(for: calendar.date(byAdding: .day, value: 1, to: Date())!)
            let tommorow = Date.distantFuture
            
            //Filter key
            let filterKey = "deadline"
            //This will fetch task between today and tommorow with is 24 HRS
            // 0 -false, 1-true
            
            predicate = NSPredicate(
                format: "\(filterKey) >= %@ AND \(filterKey) < %@ AND isCompleted == %i",
                argumentArray: [today, tommorow, 0]
            )
        } else {
            
        }
        
        // intializing Request With NSPredicate
        _request = FetchRequest(
            entity: T.entity(),
            sortDescriptors: [.init(keyPath: \Task.deadline, ascending: false)],
            predicate: predicate
        )
        self.content = content
    }
    var body: some View {
        Group {
            if request.isEmpty {
                 Text("No task found!!!")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .offset(y: 100)
            } else {
                ForEach(request, id: \.objectID) { object in
                    self.content(object)
                }
            }
        }
    }
}
