//
//  Persenter.swift
//  CurrencyExchangeDemo
//
//  Created by JETS Mobile Lab-12 on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

class Presenter: PresenterDelegate {
    
    var network : NetworkDelegate = Network()
    var viewController : VCDelegate?
    
    init() {
        network.setDelegate(delegate: self)
    }
    
    func setDelegate(delegate: VCDelegate) {
        
        viewController = delegate
    }
    
    func connectToApi(){
        
        network.connect()
    }
    
    func getCurrencies(rateList: [Rate]){
        
        viewController?.setCurrienciesList(rateList: rateList)
    }
    func getError(){
        
        viewController?.showError()
    }
}
