//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Michael Testut on 11/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change8BallImage(_ sender: Any) {
        let magicBallImage = [
        UIImage(imageLiteralResourceName: "ball1"),
        UIImage(imageLiteralResourceName: "ball2"),
        UIImage(imageLiteralResourceName: "ball3"),
        UIImage(imageLiteralResourceName: "ball4"),
        UIImage(imageLiteralResourceName: "ball5"),
        ]
        
        magic8Ball.image=magicBallImage.randomElement();
        
    }
    
}

