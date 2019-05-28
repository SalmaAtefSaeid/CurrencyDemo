//
//  Network.swift
//  CurrencyExchangeDemo
//
//  Created by JETS Mobile Lab-12 on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
import RxAlamofire
import RxCocoa
import RxSwift

class Network: NetworkDelegate{
    
    let disposeBag = DisposeBag()
    var presenter : PresenterDelegate?
    
    func setDelegate(delegate: PresenterDelegate){
        presenter = delegate
    }
    func connect() {
        
        RxAlamofire.requestJSON(.get, "https://api.exchangeratesapi.io/latest")
            .subscribe(onNext: { [weak self] (r, json) in
                if let responce = json as? [String: AnyObject] {
                    do{
                        let jsonResponce = try JSONSerialization.data(withJSONObject: responce, options: .prettyPrinted)
                        let currency = try JSONDecoder().decode( Currency.self, from: jsonResponce)
                        let currencyList = self?.convertToRateList(currency: currency)
                        self?.presenter?.getCurrencies(rateList: currencyList!)
                    } catch let error{
                        print(error.localizedDescription)
                        self?.presenter?.getError()
                    }
                }
                })
            .disposed(by: disposeBag)
    }
    
    func convertToRateList(currency: Currency) -> [Rate]{
        var ratesList = [Rate]()
        for rate in currency.rates{
            var currencyRate = Rate(currency: rate.key, currencyRate: rate.value)
            ratesList.append(currencyRate)
        }
        
        return ratesList
    }
    
}

