//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/22/22.
//

import UIKit

enum ItemInfoType {
    
    case repos , gists, followers, following
    
}

class GFItemInfoView: UIView {
    
    let symbolImageView =  UIImageView()
    let titleLabel = GFTitleLabel(textAligment: .left, fontSize: 14)
    let countLebel = GFTitleLabel.init(textAligment: .center, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(symbolImageView)
        addSubview(titleLabel)
        addSubview(countLebel)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        //alighment
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            countLebel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLebel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLebel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLebel.heightAnchor.constraint(equalToConstant: 18)

            
        ])
    }
    
    func set(iteminfoType: ItemInfoType, withCount count: Int){
        switch iteminfoType {
        case .repos:
            symbolImageView.image = UIImage(systemName: SFSymbols.repos)
            titleLabel.text =  "Public Repos"
           
        case .gists:
            symbolImageView.image = UIImage(systemName: SFSymbols.gists)
            titleLabel.text =  "Public Gists"
        case .followers:
            symbolImageView.image = UIImage(systemName: SFSymbols.followers)
            titleLabel.text =  "Followers"
        case .following:
            symbolImageView.image = UIImage(systemName: SFSymbols.following)
            titleLabel.text =  "Following"
        }
        countLebel.text =  String(count)
        
        
    }
    
}

