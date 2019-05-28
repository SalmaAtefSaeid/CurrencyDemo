//
//  ViewController.swift
//  CurrencyExchangeDemo
//
//  Created by Salma Atef Saeid on 5/26/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController, VCDelegate {

    @IBOutlet var myTableView: UITableView!
    var network = Network()
    var presenter : PresenterDelegate = Presenter()
    let disposeBag = DisposeBag()
    var rateList = [Rate]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        presenter.connectToApi()
        presenter.setDelegate(delegate: self)
    }
    
    func setCurrienciesList(rateList: [Rate]){
        self.rateList = rateList
        Observable.of(rateList).bind(to: self.myTableView.rx.items(cellIdentifier: "currencyCell", cellType: CurrencyTableViewCell.self)){(row, data, cell) in
            cell.currenyLabel.text = data.currency
            cell.rateLabel.text = String(format: "%f", data.currencyRate)
            }.disposed(by: disposeBag)
        print(rateList)
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
    }
    
    func showError(){
        let alert = UIAlertController(title: "Trun on wifi or cellular data?", message: "It's recommended you turn on wifi or cellular data.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }

}

