//
//  ViewController.swift
//  Calculator
///
//  Created by Dima Shelkov on 3/11/19.
//  Copyright © 2019 Dima Shelkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        //What should happen when a non-number button is pressed
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
    
        isFinishedTypingNumber = true
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber == true {
                
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
            
            
        }
    
    }

}

