//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Michael Testut on 11/30/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct Question{
    let text: String
    let answers: Array<String>
    let correctAnswer: String
    
    init(q:String, a:Array<String>, correctAnswer:String){
        text = q
        answers = a
        self.correctAnswer=correctAnswer
    }
}
