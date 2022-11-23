//
//  GFUserInfoHeaderVC.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/21/22.
//

import UIKit

class GFUserInfoHeaderVC: UIViewController {
    
    
    let avatarImageView = GFImageView(frame: .zero)
    let newUsernameLabel = GFTitleLabel(textAligment: .left, fontSize: 34)
    let nameLabel = GFSecondaryTitleLabel(fonSize: 18)
    let locationImageView = UIImageView()
    let locationLabel = GFSecondaryTitleLabel  (fonSize: 18)
    let bioLabel = GFBodyLabel(textAligment: .left)
    
    var user: User!
    
    
    init( user: User){
        
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutUI()
        configureUiElements()
        
    }
    
    func configureUiElements(){
      
        avatarImageView.downloadImage(from: user.avatarUrl)
        newUsernameLabel.text = user.login
        //if user is missing we set it to blank
        nameLabel.text = user.name ?? ""
        locationLabel.text = user.location ?? "noLocation"
        bioLabel.text = user.bio ?? "No bio "
        bioLabel.numberOfLines = 3

        locationImageView.image = UIImage(systemName: SFSymbols.location)
        locationImageView.tintColor = .secondaryLabel
    }
    
    func addSubViews() {
        
        view.addSubview(avatarImageView)
        view.addSubview(newUsernameLabel)
        view.addSubview(nameLabel)
        view.addSubview(locationImageView)
        view.addSubview(locationLabel)
        view.addSubview(bioLabel)
    }
    
    func layoutUI () {
        addSubViews()
        let padding : CGFloat = 20
        let textImagePadding : CGFloat = 12
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            avatarImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 90),
            avatarImageView.heightAnchor.constraint(equalToConstant: 90),
            
            newUsernameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            newUsernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            newUsernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newUsernameLabel.heightAnchor.constraint(equalToConstant: 38),
            
        
            nameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            
            locationImageView.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor),
            locationImageView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            locationImageView.widthAnchor.constraint(equalToConstant: 20),
            locationImageView.heightAnchor.constraint(equalToConstant: 20),
            
            locationLabel.centerYAnchor.constraint(equalTo: locationImageView.centerYAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: locationImageView.trailingAnchor, constant: 5),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            locationLabel.heightAnchor.constraint(equalToConstant: 20),
            
            bioLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: textImagePadding),
            bioLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            bioLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bioLabel.heightAnchor.constraint(equalToConstant: 60)
        
        ])
        
    }
    
}
