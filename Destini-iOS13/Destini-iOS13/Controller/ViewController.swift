//
//  ViewController.swift
//  Destini-iOS13
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain=StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    func updateUI(){
        
    }
    
}

