//
//  HomeVC.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.delegate(delegate: self)
    }
}

extension HomeVC: HomeScreenDelegate {
    func tappedStartButton() {
        print(#function) // printando o nome da funcao
    }
    
    
}
