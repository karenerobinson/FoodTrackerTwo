//
//  ViewController.swift
//  FoodTrackerTwo
//
//  Created by Karen E. Robinson on 7/5/18.
//  Copyright © 2018 No Frills Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealNameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text="new default"
    }
    
    
}

