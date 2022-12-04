//
//  QuizLogic.swift
//  Quizzler-iOS13
//
//  Created by Michael Testut on 12/2/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizLogic{
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

        
    ]
    var totalCorrect=0
    var questionNumber=0;
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
            totalCorrect+=1
            return true
        }
        else{
           return false
        }
    }
    func getQuestionText()->String{
        if questionNumber<quiz.count{
            return  quiz[questionNumber].text;
        }
        else{
            return "Game Over! You got \(totalCorrect) out of \(quiz.count) questions correct"
        }
    }
    func getProgress()->Float{
        let totalQuestions = quiz.count
        let progress=Float(questionNumber+1 )/Float(totalQuestions)
        return progress
    }
    
    mutating func nextQuestion(){
        questionNumber+=1
    }
    
    func hideButtons() -> Bool{
        if questionNumber>=quiz.count{
            return true
        }
        else{
            return false
            
        }
    }
    
    func setAnswers()->Array<String>{
        if questionNumber<quiz.count{
            return quiz[questionNumber].answers
        }
        else{
            return["Play Again", "Two", "Three"]
        }
    }
    
    mutating func playAgain(){
        totalCorrect=0
        questionNumber=0;
    }
}
