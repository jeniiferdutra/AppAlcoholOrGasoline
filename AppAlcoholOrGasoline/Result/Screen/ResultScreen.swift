//
//  ResultScreen.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 11/11/24.
//

import UIKit

class ResultScreen: UIView {

    lazy var backgroundImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "BG BLUR")
        img.contentMode = .scaleAspectFit
        return img
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
        ])
    }
}
