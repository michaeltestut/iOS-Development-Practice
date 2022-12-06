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
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    var quizLogic = QuizLogic()
    var timer=Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer=sender.currentTitle
        if userAnswer == "Play Again" {
            quizLogic.playAgain()
            updateUI()
        }
        else{
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
    }
    
    @objc func updateUI(){
        let answerArray = quizLogic.setAnswers()
        buttonOne.setTitle(answerArray[0], for: .normal)
        buttonTwo.setTitle(answerArray[1], for: .normal)
        buttonThree.setTitle(answerArray[2], for: .normal)
        buttonTwo.isHidden=quizLogic.hideButtons()
        buttonThree.isHidden=quizLogic.hideButtons()
        buttonOne.backgroundColor=UIColor.clear
        buttonTwo.backgroundColor=UIColor.clear
        buttonThree.backgroundColor=UIColor.clear
        questionLabel.text=quizLogic.getQuestionText()
        progressBar.progress=quizLogic.getProgress()
        
     
    }
}

