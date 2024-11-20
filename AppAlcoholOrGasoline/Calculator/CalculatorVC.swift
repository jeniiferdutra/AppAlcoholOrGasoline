//
//  CalculatorVC.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen: CalculatorScreen?
    var alert: Alert?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self) // self -> a controladora vai ser a prorpia CalculatorVC
        screen?.delegate(delegate: self) // self -> quem vai assinar esse contrato é a propria ViewController
    }
    
    func validateTextFields() -> Bool {
        
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false }
        guard let gasPriceTextField = screen?.gasPriceTextField.text else {  return false }
        
        if ethanolPrice.isEmpty && gasPriceTextField.isEmpty {
            alert?.showAlertInformation(title: "Atençao! ", message: "Informe os valores do álcool e da gasolina")
            return false
        } else if ethanolPrice.isEmpty {
            alert?.showAlertInformation(title: "Atençao! ", message: "Informe o valor do álcool")
            return false
        } else if gasPriceTextField.isEmpty {
            alert?.showAlertInformation(title: "Atençao! ", message: "Informe o valor da gasolina")
            return false
        }
        
        return true
    }
    
}

extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCalculateButton() {

        if validateTextFields() {
            
            // Inicializa um objeto `NumberFormatter`, que é usado para converter texto em números e vice-versa.
            let formatter = NumberFormatter()
            
            // Define o estilo do número para decimal, o que permite formatações como separadores de milhar ou ponto decimal.
            formatter.numberStyle = .decimal
            
            // Converte o texto do campo de texto `ethanolPriceTextField` em um número Double.
            // Se a conversão falhar (retornando nil), assume o valor padrão de 0.0.
            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            
            // Converte o texto do campo de texto `gasPriceTextField` em um número Double.
            // Assim como antes, se a conversão falhar, o valor padrão será 0.0.
            let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            

            var vc: ResultVC?
            if ethanolPrice / gasPrice > 0.7 {
                print("Melhor utilizar gasolina")
                vc = ResultVC(bestFuel: .gas)
            }
            else {
                print("Melhor utilizar álcool")
                vc = ResultVC(bestFuel: .ethanol)
            }
            navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
