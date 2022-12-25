//
//  ViewController.swift
//  Tipsy


import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPercentage = 0.1;

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercentage)
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected=false;
        tenPctButton.isSelected=false;
        twentyPctButton.isSelected=false;
        sender.isSelected=true;
        
        if zeroPctButton.isSelected{
               tipPercentage=0
            }
        else if tenPctButton.isSelected{
            tipPercentage=0.1
        }
        else {
            tipPercentage=0.2
        }
    }
}

