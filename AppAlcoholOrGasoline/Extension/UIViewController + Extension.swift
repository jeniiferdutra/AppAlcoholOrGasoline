//
//  UIViewController + Extension.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 20/11/24.
//

import Foundation
import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        // Cria um gesto de toque para detectar cliques na tela.
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        // Permite que outros toques na tela ainda sejam detectados pelas subviews.
        tap.cancelsTouchesInView = false
        
        // Adiciona o gesto de toque à view principal.
        view.addGestureRecognizer(tap)
    }

    @objc private func dismissKeyboard() {
        // Fecha o teclado ao encerrar a edição em qualquer campo.
        view.endEditing(true)
    }

}
