//
//  ViewController.swift
//  BMI Calculator
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    
    @IBOutlet weak var weightValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text=String(format:"%.2f", sender.value)+"m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text=String(format:"%.0f",sender.value)+"Kg"
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height=heightSlider.value
        let weight=weightSlider.value
        let bmi=weight/pow(height, 2)
        print(bmi)
    }
    
}

