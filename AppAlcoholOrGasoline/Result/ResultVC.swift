//
//  ResultVC.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 11/11/24.
//

import UIKit

class ResultVC: UIViewController {
    
    var screen: ResultScreen?
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
    
    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
}

extension ResultVC: ResultScreenDelegate {
    func tappedBackButton() {
        popViewController()
    }
    
    func tappedCalculateButton() {
        popViewController()
    }
}
