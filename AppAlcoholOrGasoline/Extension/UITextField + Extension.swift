//
//  UITextField + Extension.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 20/11/24.
//

import Foundation
import UIKit

extension UITextField {
 
    func addDoneButtonOnKeyboard() {
        // Cria uma UIToolbar com tamanho específico para servir como acessório do teclado.
        let doneToobar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToobar.barStyle = .default // Define o estilo padrão para a barra.
        
        // Cria um espaço flexível para posicionar o botão "OK" à direita.
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        // Cria o botão "OK" que chama a ação `doneButtonAction` ao ser pressionado.
        let done = UIBarButtonItem(title: "OK", style: .done, target: self, action: #selector(doneButtonAction))
        
        // Adiciona os itens (espaço flexível e botão "OK") na toolbar.
        let items = [flexSpace, done]
        doneToobar.items = items
        
        // Ajusta o tamanho da toolbar para caber nos itens.
        doneToobar.sizeToFit()
        
        // Define a toolbar como acessório do teclado.
        self.inputAccessoryView = doneToobar
    }

    @objc func doneButtonAction() {
        // Fecha o teclado ao terminar a edição.
        self.resignFirstResponder()
    }

}
