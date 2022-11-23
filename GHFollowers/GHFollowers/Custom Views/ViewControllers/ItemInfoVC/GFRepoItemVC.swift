//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/22/22.
//

import UIKit


class GFRepoItemVC: GFItemInfoVC {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        
        itemOnfoViewOne.set(iteminfoType: .repos, withCount: user.publicRepos)
        itemOnfoViewTwo.set(iteminfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColoer: .systemPurple, title: "GitHub Profile")
        
    }
    
    override func actionButtonTapped() {
        delegate.didtapGitHubProfile(for: user)
    }
}

