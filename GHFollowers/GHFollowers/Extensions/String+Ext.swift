//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/23/22.
//

import Foundation


extension String {
    
    func converToDate() -> Date? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current

        return dateFormatter.date(from: self)
        
    }
    
    func converToDisplayFormat() -> String {
    
        guard let date = self.converToDate() else { return "Date is unknown" }
        
        return date.converFormatToMonth()
    }
}
