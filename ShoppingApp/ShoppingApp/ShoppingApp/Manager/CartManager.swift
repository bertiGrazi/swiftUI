//
//  CartManager.swift
//  ShoppingApp
//
//  Created by Grazi  Berti on 10/02/23.
//

import Foundation

class CartManager: ObservableObject {
    /// set = private set poderá ser setado em qualquer momento
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter {
            $0.id != product.id
        }
        total -= product.price
    }
}
