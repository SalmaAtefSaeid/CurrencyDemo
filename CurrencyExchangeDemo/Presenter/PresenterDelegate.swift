//
//  PresenterDelegate.swift
//  CurrencyExchangeDemo
//
//  Created by JETS Mobile Lab-12 on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

protocol PresenterDelegate {
    
    func setDelegate(delegate: VCDelegate)
    func connectToApi()
    func getCurrencies(rateList: [Rate])
    func getError()
    
}
