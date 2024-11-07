//
//  Alert.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 06/11/24.
//

import UIKit

class Alert {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func showAlertInformation(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert) // criar o alert
        let okButton = UIAlertAction(title: "Ok", style: .default) // criar botao
        alertController.addAction(okButton) // add o botao no alert
        controller.present(alertController, animated: true)
    }
}
