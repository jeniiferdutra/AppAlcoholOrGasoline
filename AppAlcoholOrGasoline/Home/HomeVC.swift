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
    }


}

