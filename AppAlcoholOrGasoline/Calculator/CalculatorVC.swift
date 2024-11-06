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

        // Verifica a relação entre o preço do etanol e o preço da gasolina.
        // Se o preço do etanol dividido pelo preço da gasolina for maior que 0.7, recomenda-se usar gasolina.
        if ethanolPrice / gasPrice > 0.7 {
            print("Melhor utilizar gasolina")
        }
        // Caso contrário, recomenda-se usar etanol (álcool).
        else {
            print("Melhor utilizar álcool")
        }

    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
