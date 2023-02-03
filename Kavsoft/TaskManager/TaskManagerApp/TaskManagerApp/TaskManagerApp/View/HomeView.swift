//
//  HomeView.swift
//  TaskManagerApp
//
//  Created by Grazi  Berti on 02/02/23.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTY
    @StateObject var taskModel: TaskViewModel = .init()
    
    //MARK: - Matched Geomtry Namespace
    @Namespace var animation
    
    //MARK: - Fetching Task
    @FetchRequest(
        entity: Task.entity(),
        sortDescriptors:
            [NSSortDescriptor(
            keyPath: \Task.deadline,
            ascending: false)
            ],
        predicate: nil,
        animation: .easeInOut
    ) var tasks: FetchedResults<Task>
    
    //MARK: - Environment Values
    @Environment(\.self) var env
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Welcome Back")
                        .font(.callout)
                    
                    Text("Here's Update Today.")
                        .font(.title2.bold())
                } //: VStack
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
                
                CustomSegmentedBar()
                    .padding(.top, 5)
                
                //MARK: Task View
                TaskView()
            } //: VStack
            .padding()
        } //: ScrollView
        
        .overlay(alignment: .bottom) {
            //MARK: - Add Buttom
            Button {
                taskModel.openEditTask.toggle()
            } label: {
                Label {
                    Text("Add Task")
                        .font(.callout)
                        .fontWeight(.semibold)
                } icon: {
                    Image(systemName: "plus.app.fill")
                }
                .foregroundColor(.white)
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(.black, in: Capsule() )
            }
            
            //MARK: Linear Gradient GB
            .padding(.top, 10)
            .frame(maxWidth: .infinity)
            .background {
                LinearGradient(colors: [
                    .white.opacity(0.05),
                    .white.opacity(0.4),
                    .white.opacity(0.7),
                    .white
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            }
            
        }
        .fullScreenCover(isPresented: $taskModel.openEditTask) {
            taskModel.resetTaskData()
        } content: {
            AddNewTask()
                .environmentObject(taskModel)
        }
    }
    
    //MARK: TaskView
    @ViewBuilder
    func TaskView() -> some View {
        LazyVStack(spacing: 20) {
            ForEach(tasks) { task in
                TaskRow(task: task)
            }
        }
        .padding(.top, 20)
    }
    
    //MARK: - Task Row View
    @ViewBuilder
    func TaskRow(task: Task) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(task.type ?? "")
                    .font(.callout)
                    .padding(.vertical, 5)
                    .padding(.horizontal)
                    .background {
                        Capsule()
                            .fill(.white.opacity(0.3))
                    }
                
                Spacer()
                
                //MARK: Edit Button Only for Non Completed Task
                if !task.isCompleted {
                    Button {
                        taskModel.editTask = task
                        taskModel.openEditTask = true
                        taskModel.setupTask()
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.black)
                    }
                }
            }
            
            Text(task.title ?? "")
                .font(.title2.bold())
                .foregroundColor(.black)
                .padding(.vertical, 10)
            
            HStack(alignment: .bottom, spacing: 0) {
                VStack(alignment: .leading, spacing: 10) {
                    Label {
                        Text((task.deadline ?? Date() ).formatted(date: .long, time: .omitted))
                    } icon: {
                        Image(systemName: "calendar")
                    }
                    .font(.caption)
                    
                    Label {
                        Text((task.deadline ?? Date() ).formatted(date: .omitted, time: .shortened))
                    } icon: {
                        Image(systemName: "clock")
                    }
                    .font(.caption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                if !task.isCompleted {
                    Button {
                        // MARK: Update with Core Data
                        task.isCompleted.toggle()
                        try? env.managedObjectContext.save()
                        
                    } label: {
                        Circle()
                            .strokeBorder(.black, lineWidth: 1.5)
                            .frame(width: 25, height: 25, alignment: .trailing)
                            .contentShape(Circle())
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color(task.color ?? "Yellow"))
        }
    }
    
    //MARK: - Custom Segmented Bar
    @ViewBuilder
    func CustomSegmentedBar() -> some View {
        let tabs = ["Today", "Upcoming", "Done"]
        HStack(spacing: 10) {
            ForEach(tabs, id: \.self) { tab in
                Text(tab)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .scaleEffect(0.9)
                    .foregroundColor(taskModel.currentTab == tab ? .white : .black)
                    .padding(.vertical, 6)
                    .frame(maxWidth: .infinity)
                    .background {
                        if taskModel.currentTab == tab {
                            Capsule()
                                .fill(.black)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(Capsule())
                    .onTapGesture {
                        withAnimation {
                            taskModel.currentTab = tab
                        }
                    }
            }
        }
    } //: Custom Segmented Bar
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
