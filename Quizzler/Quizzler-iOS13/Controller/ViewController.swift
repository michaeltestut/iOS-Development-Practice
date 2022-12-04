//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizLogic = QuizLogic()
    var timer=Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer=sender.currentTitle
        let checkUserAnswer = quizLogic.checkAnswer(userAnswer!)
        if checkUserAnswer{
            sender.backgroundColor=UIColor.green
        }
        else{
            sender.backgroundColor=UIColor.red
        }
        quizLogic.nextQuestion()
        timer=Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        trueButton.isHidden=quizLogic.hideButtons()
        falseButton.isHidden=quizLogic.hideButtons()
        trueButton.backgroundColor=UIColor.clear
        falseButton.backgroundColor=UIColor.clear
        questionLabel.text=quizLogic.getQuestionText()
        progressBar.progress=quizLogic.getProgress()
        
     
    }
}

