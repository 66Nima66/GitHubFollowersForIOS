//
//  GFEMptyStateView.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/18/22.
//

import UIKit

class GFEMptyStateView: UIView {

    let messageLebel = GFTitleLabel(textAligment: .center, fontSize: 28)
    let logoImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLebel.text = message
        configure()
    }
    
    
    private func configure (){
        
        addSubview(messageLebel)
        addSubview(logoImageView)
        
        messageLebel.numberOfLines = 3
        messageLebel.textColor  = .secondaryLabel
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints  = false
        
        NSLayoutConstraint.activate([
        
            messageLebel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -150),
            messageLebel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            messageLebel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            messageLebel.heightAnchor.constraint(equalToConstant: 200),
        
        
            logoImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 180),
            logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 40)
        
        
        ])
        
    }
}
