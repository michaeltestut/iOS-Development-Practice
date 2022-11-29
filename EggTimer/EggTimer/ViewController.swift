//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

let eggTime = ["Soft":5, "Medium":8, "Hard":12]
var totalTime=0
var secondsPassed=0

var timer = Timer()
class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        secondsPassed=0
        progressBar.progress=0.0;
        let hardness = sender.currentTitle;
        label.text=hardness
        totalTime = eggTime[hardness!]!
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed+=1
            let percentageProgress=Float(secondsPassed)/Float(totalTime)
            progressBar.progress=percentageProgress
        
        }
        else{
            timer.invalidate()
            label.text="Done!"
        }
    }
}
