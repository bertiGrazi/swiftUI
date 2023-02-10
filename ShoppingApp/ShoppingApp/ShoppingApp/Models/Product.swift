//
//  Product.swift
//  ShoppingApp
//
//  Created by Grazi  Berti on 10/02/23.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(name: "Yellow Sweater", image: "shopping1", price: 74),
    Product(name: "Yellow Sweater", image: "shopping1", price: 64),
    Product(name: "Yellow Sweater", image: "shopping1", price: 54),
    Product(name: "Yellow Sweater", image: "shopping1", price: 44),
    Product(name: "Yellow Sweater", image: "shopping1", price: 34),
    Product(name: "Yellow Sweater", image: "shopping1", price: 24),
    Product(name: "Yellow Sweater", image: "shopping1", price: 14),
]
