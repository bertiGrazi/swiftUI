//
//  ContentView.swift
//  ToDoList
//
//  Created by Grazi  Berti on 08/05/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel =  MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
