//
//  RatingControl.swift
//  FoodTrackerTwo
//
//  Created by Karen E. Robinson on 7/9/18.
//  Copyright © 2018 No Frills Apps. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    //MARK: Installation
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    //note: "@objc" was added by a "fix"
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button \(ratingButtons.index(of:button)) pressed 👍")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
