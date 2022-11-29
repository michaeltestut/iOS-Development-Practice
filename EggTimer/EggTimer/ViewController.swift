//
//  ViewController.swift
//  EggTimer
//
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

func playSound() {
    guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }

        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
}

let eggTime = ["Soft":300, "Medium":480, "Hard":720]
var totalTime=0
var secondsPassed=0

var timer = Timer()
class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        secondsPassed=0
        let hardness = sender.currentTitle;
        label.text=hardness
        totalTime = eggTime[hardness!]!
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            let percentageProgress=Float(secondsPassed)/Float(totalTime)
            progressBar.progress=percentageProgress
            secondsPassed+=1
        
        }
        else{
            progressBar.progress=1.0
            timer.invalidate()
            playSound()
            label.text="Done!"
        }
    }
}
