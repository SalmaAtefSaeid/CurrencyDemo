//
//  VCDelegate.swift
//  CurrencyExchangeDemo
//
//  Created by JETS Mobile Lab-12 on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

protocol VCDelegate {
    
    func setCurrienciesList(rateList: [Rate])
    func showError()
    
}
