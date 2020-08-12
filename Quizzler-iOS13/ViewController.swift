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
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Question(text: "1 + 1 = 2", answer: "True"),
        Question(text: "2 + 1 = 2", answer: "True"),
        Question(text: "3 + 1 = 2", answer: "False"),
        Question(text: "4 + 1 = 2", answer: "True")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "Question?"
    }

    @IBAction func pressAnswer(_ sender: UIButton) {
        if (sender == trueButton) {
            //question.text = "Answer: True"
            //progressBar.progress = 0.25
            
        } else {
            //question.text = "Answer: False"
            //progressBar.progress = 0.75
        }
        
        if (questionNumber+1 < quiz.count) {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateView()
    }
    
    func updateView() {
        question.text = quiz[questionNumber].text
    }
    
}

