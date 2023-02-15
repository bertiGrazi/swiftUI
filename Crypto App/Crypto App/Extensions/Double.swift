//
//  Double.swift
//  Crypto App
//
//  Created by Grazi  Berti on 15/02/23.
//

import Foundation

extension Double {
    
    /// Convert a Double into a Currency with 2 decimal places
    ///  ```
    /// Convert 1234.46 to $1,234.56
    ///  ```
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // <- default value
        formatter.currencyCode = "usd" // <- chenge current
        formatter.currencySymbol = "$" // <- chenge current symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    /// Convert a Double into a Currency  as String with 2 decimal places
    ///  ```
    /// Convert 1234.46 to "$1,234.56"
    ///  ```
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double into a Currency with 2-6 decimal places
    ///  ```
    /// Convert 1234.46 to $1,234.56
    /// Convert 12.3446 to $12.3456
    /// Convert 0.1234.46 to $0,123456
    ///  ```
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // <- default value
        formatter.currencyCode = "usd" // <- chenge current
        formatter.currencySymbol = "$" // <- chenge current symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    
    /// Convert a Double into a Currency  as String with 2-6 decimal places
    ///  ```
    /// Convert 1234.46 to "$1,234.56"
    /// Convert 12.3446 to "$12.3456"
    /// Convert 0.1234.46 to "$0,123456"
    ///  ```
    
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double into a Currency  as String with 2-6 decimal places
    ///  ```
    /// Convert 1.23456 to "1.23"
    ///  ```
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Convert a Double into a Currency  as String with 2-6 decimal places
    ///  ```
    /// Convert 1.23456 to "1.23%"
    ///  ```

    func asPorcentString() -> String {
        return asNumberString() + "%"
    }
}
