//
//  ResultScreen.swift
//  AppAlcoholOrGasoline
//
//  Created by Jenifer Rocha on 11/11/24.
//

import UIKit

protocol ResultScreenDelegate: AnyObject {
    func tappedBackButton()
    func tappedCalculateButton()
}

class ResultScreen: UIView {
    
    private weak var delegate: ResultScreenDelegate?
    
    public func delegate(delegate: ResultScreenDelegate?) {
        self.delegate = delegate
    }

    lazy var backgroundImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "BG BLUR")
        img.contentMode = .scaleAspectFit
        return img
        
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "LOGO menor")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    lazy var sentenceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.text = "Abasteça com:"
        return label
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 73)
        label.text = "Gasolina"
        return label
    }()
    
    lazy var calculateButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Calcular Novamente", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        btn.setTitleColor(.white, for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 8
        btn.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 127/255, alpha: 1.0)
        btn.addTarget(self, action: #selector(tappedCalculateButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedCalculateButton() {
        delegate?.tappedCalculateButton()
    }
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "Botão Back"), for: .normal)
        btn.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedBackButton() {
        delegate?.tappedBackButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        addSubview(logoAppImageView)
        addSubview(sentenceLabel)
        addSubview(resultLabel)
        addSubview(calculateButton)
        addSubview(backButton)
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
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            sentenceLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 180),
            sentenceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            resultLabel.topAnchor.constraint(equalTo: sentenceLabel.bottomAnchor, constant: 12),
            resultLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -135),
            calculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            calculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            calculateButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
}
