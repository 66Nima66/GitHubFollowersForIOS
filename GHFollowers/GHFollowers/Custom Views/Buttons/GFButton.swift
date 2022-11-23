//
//  GFButton.swift
//  GHFollowers
//
//  Created by Nima Bahrami on 8/6/22.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     init(backGroundColor : UIColor , title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backGroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    
    private func configure() {
        
        layer.cornerRadius = 1
//        titleLabel?.textColor  = .red
       
        //dynamic Type
        //default Color is white anyways but this is how we change tiitle color!
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func set(backgroundColoer: UIColor, title: String){
        
        self.backgroundColor = backgroundColoer
        setTitle(title, for: .normal)
    }
    
    
}
