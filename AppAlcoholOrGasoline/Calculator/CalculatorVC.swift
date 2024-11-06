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
        print(#function) // printar o nome da propria funcao
    }
    
    func tappedBackButton() {
        print(#function)
    }
    
    
}
