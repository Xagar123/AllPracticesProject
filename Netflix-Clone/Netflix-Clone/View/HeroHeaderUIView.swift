//
//  HeroHeaderUIView.swift
//  Netflix-Clone
//
//  Created by Sagar Das on 06/03/23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    
    private let heroImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "image")
        return imageView
    }()
    
    private let watchNowButton:UIButton = {
       let button = UIButton()
        button.setTitle("Watch Now", for: .normal)
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.darkGray
        let playImage = UIImage(systemName: "play.fill")
        let whitePlayBtn = playImage?.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        button.setImage(whitePlayBtn, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.layer.cornerRadius = 5
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        return button
    }()
    
    private let addButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.darkGray
        let plusBtn = UIImage(systemName: "plus")
        let whitePlusBtn = plusBtn?.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        let resizeImage = whitePlusBtn?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15))
        button.setImage(resizeImage, for: .normal)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private func addGradient() {
         let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.clear.cgColor,
    //        UIColor.darkGray.cgColor,
            UIColor.systemBackground.cgColor

        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(watchNowButton)
        addSubview(addButton)
        applyConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    
    func applyConstraints() {
        
        let watchNowButtonConstrant = [
            watchNowButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            watchNowButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            watchNowButton.widthAnchor.constraint(equalToConstant: 170),
            watchNowButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(watchNowButtonConstrant)
        
        let plusBtnConstrant = [
            addButton.leadingAnchor.constraint(equalTo: watchNowButton.trailingAnchor, constant: 10),
            addButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            addButton.heightAnchor.constraint(equalToConstant: 40),
            addButton.widthAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(plusBtnConstrant)
    }
    
    
}
