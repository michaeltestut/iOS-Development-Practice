//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

let eggTime = ["Soft":5, "Medium":8, "Hard":12]
var counter = 30

var timer = Timer()
class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle;
        counter = eggTime[hardness!]!
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds")
            label.text="\(counter) seconds"
            counter -= 1
        }
        else{
            timer.invalidate()
            label.text="Done!"
        }
    }
}
