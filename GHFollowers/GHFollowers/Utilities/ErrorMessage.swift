//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/16/22.
//

import Foundation



enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid request. please try again"
    case unableToComplete = "Unable to complete your request please check your internet connection!"
    case invalidResponse = "Invalid Response From the Server, please Try again.!"
    case invalidData = "Data received form the server was invalid, please try again"

    
    
    
    
}
