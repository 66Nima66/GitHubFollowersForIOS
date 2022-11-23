//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/23/22.
//

import Foundation


extension Date {

    func converFormatToMonth() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = " MMM yyyy"
        return dateFormatter.string(from: self )
    }
}
