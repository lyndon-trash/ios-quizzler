//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "Question?"
        updateView()
    }

    @IBAction func pressAnswer(_ sender: UIButton) {
        let userAnswer = sender == trueButton ? "True" : "False"
        
        if quizBrain.check(userAnswer) {
            sender.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            sender.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.updateView()
        }
    }
    
    func updateView() {
        question.text = quizBrain.currentQuestion
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.progress
        scoreLabel.text = "Score: \(quizBrain.score)"
        
        quizBrain.nextQuestion()
    }
    
}

