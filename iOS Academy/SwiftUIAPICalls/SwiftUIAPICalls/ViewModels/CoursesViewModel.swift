//
//  CoursesViewModel.swift
//  SwiftUIAPICalls
//
//  Created by Grazielli Berti on 31/01/23.
//

import SwiftUI

struct Course: Hashable, Codable {
    let name: String
    let image: String
}

class CoursesViewModel: ObservableObject {
    /// Publlished:
    /// - @Published is one of the most useful property wrappers in SwiftUI, allowing us to create observable objects that automatically announce when changes occur. SwiftUI will automatically monitor for such changes, and re-invoke the body property of any views that rely on the data.
    @Published var couses: [Course] = []
    
    func fetchCoursesList() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else { return }
        
        let task = URLSession.shared.dataTask(with: url) {
           [weak self] data, _, error in
            guard let data = data, error == nil else { return }
            
        // Converte to JSON
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    self?.couses = courses
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}

