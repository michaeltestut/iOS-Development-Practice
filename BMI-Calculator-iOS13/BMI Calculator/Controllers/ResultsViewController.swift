//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Michael Testut on 12/16/22.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmiValue
        adviceLabel.text=advice
        background.backgroundColor=color
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
