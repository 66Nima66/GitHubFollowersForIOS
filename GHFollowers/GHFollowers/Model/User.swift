//
//  User.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/13/22.
//

import Foundation

struct User: Codable {
    //spelling is super Important
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
    
