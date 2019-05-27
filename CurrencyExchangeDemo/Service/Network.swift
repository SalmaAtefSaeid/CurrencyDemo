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
    func connect() {
//        let formatter = NSNumberFormatter()
//        formatter.numberStyle = .currencyStyle
//        formatter.currencyCode = "USD"
//        if let fromValue = NSNumberFormatter().numberFromString(self.fromTextField.text!) {
//
//            RxAlamofire.requestJSON(.get, sourceStringURL)
//                .debug()
//                .subscribe(onNext: { [weak self] (r, json) in
//                    if let dict = json as? [String: AnyObject] {
//                        let valDict = dict["rates"] as! Dictionary<String, AnyObject>
//                        if let conversionRate = valDict["USD"] as? Float {
//                            self?.toTextField.text = formatter
//                                .string(from: NSNumber(value: conversionRate * fromValue))
//                        }
//                    }
//                    }, onError: { [weak self] (error) in
//                        self?.displayError(error as NSError)
//                })
//                .disposed(by: disposeBag)
//
//        } else {
//            self.toTextField.text = "Invalid Input!"
//        }

    }
    
    
}
