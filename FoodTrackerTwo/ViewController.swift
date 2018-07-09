//
//  ViewController.swift
//  FoodTrackerTwo
//
//  Created by Karen E. Robinson on 7/5/18.
//  Copyright © 2018 No Frills Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealNameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        mealNameText.delegate = self
        
    }

    //MARK: UITextFieldDelegate
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    //    func textFieldDidEndEditing(_ textField: UITextField)
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameText.text="new default"
    }
    
    
}

