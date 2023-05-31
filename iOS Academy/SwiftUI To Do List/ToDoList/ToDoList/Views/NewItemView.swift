//
//  NewItemView.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                //Title
                TextField("Title", text: $viewModel.title)
                
                //Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                
                //Button
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
