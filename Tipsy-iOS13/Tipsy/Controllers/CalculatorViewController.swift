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
    var stepperValue=2
    var perPersonTotal=0

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        stepperValue=Int(sender.value)
        splitNumberLabel.text=String(stepperValue)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var billTotal = Double(billTextField.text!)!
        var split = ((billTotal*tipPercentage)+billTotal)/Double(stepperValue)
        print(tipPercentage)
        print(stepperValue)
        print(billTextField.text!)
        print (round(split*100)/100)
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
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

