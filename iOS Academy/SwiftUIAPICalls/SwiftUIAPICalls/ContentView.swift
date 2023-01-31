//
//  ContentView.swift
//  SwiftUIAPICalls
//
//  Created by Grazielli Berti on 31/01/23.
//

import SwiftUI

struct ContentView: View {
    /// @StateObject: referência dentro de uma de suas visualizações e garantir que ele permaneça ativo para uso nessa visualização e em outras com quem você o compartilha.
    /// garantir que ele permaneça ativo
    @StateObject var viewModel = CoursesViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.couses, id: \.self) {
                    course in
                    HStack {
                        URLImage(urlString: course.image)
                        
                        Text(course.name)
                            .bold()
                    }.padding(3)
                }
            }.navigationTitle("Courses")
                .onAppear {
                    viewModel.fetchCoursesList()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
