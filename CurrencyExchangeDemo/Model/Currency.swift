//
//  Currency.swift
//  CurrencyExchangeDemo
//
//  Created by Salma Atef Saeid on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

// MARK: - Currency
struct Currency: Codable {
    
    let base: String
    let rates: [String: Double]
    let date: String
    
    init(base: String, rates: [String: Double], date: String) {
        self.base = base
        self.rates = rates
        self.date = date
    }
}

