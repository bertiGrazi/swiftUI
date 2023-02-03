//
//  AddNewTask.swift
//  TaskManagerApp
//
//  Created by Grazi  Berti on 03/02/23.
//

import SwiftUI

struct AddNewTask: View {
    //MARK: - Properties
    @EnvironmentObject var taskModel: TaskViewModel
    //MARK: - All Environment Values in one Variable
    @Environment(\.self) var env
    
    //MARK: - View
    var body: some View {
        VStack(spacing: 12) {
            Text("Edit Text")
                .font(.title3.bold())
                .frame(maxWidth: .infinity)
                .overlay(alignment: .leading) {
                    Button {
                        env.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask()
            .environmentObject(TaskViewModel())
    }
}
