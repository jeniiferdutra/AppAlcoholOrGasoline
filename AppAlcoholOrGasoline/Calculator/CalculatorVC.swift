//
//  CalculatorVC.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self) // self -> quem vai assinar esse contrato é a propria ViewController
    }
    
}

extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        
        let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        
        if ethanolPrice / gasPrice > 0.7 {
            print("Melhor utilizar gasolina")
        }
        else {
            print("Melhor utilizar álcool")
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
