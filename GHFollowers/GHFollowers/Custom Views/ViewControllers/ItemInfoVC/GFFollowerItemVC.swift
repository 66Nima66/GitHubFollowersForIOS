//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/22/22.
//

import UIKit


class GFFollowerItemVC: GFItemInfoVC {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        
        itemOnfoViewOne.set(iteminfoType: .followers, withCount: user.followers)
        itemOnfoViewTwo.set(iteminfoType: .following, withCount: user.following)
        actionButton.set(backgroundColoer: .systemGreen, title: "Get Followers")
    }
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
      
    }
}
