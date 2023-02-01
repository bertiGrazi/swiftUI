//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Grazielli Berti on 01/02/23.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: Int
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact:  [String]
}
