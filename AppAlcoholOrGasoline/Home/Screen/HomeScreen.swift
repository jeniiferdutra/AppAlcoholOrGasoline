//
//  HomeScreen.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 04/11/24.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backgroundImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "BG HOME")
        img.contentMode = .scaleAspectFill // Preenche o espaço sem distorcer, mas corta as bordas
        return img
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
    }
    
}
