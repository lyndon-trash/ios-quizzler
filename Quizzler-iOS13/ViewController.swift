//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "Question?"
    }

    @IBAction func pressAnswer(_ sender: UIButton) {
        if (sender == trueButton) {
            question.text = "Answer: True"
        } else {
            question.text = "Answer: False"
        }
    }
    
}

