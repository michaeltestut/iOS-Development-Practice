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
    var split=0.0
//    var billTotal:Double=0.0

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        stepperValue=Int(sender.value)
        splitNumberLabel.text=String(stepperValue)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billTotal = Double(billTextField.text!) ?? 0
        split = ((billTotal*tipPercentage)+billTotal)/Double(stepperValue)
        print(tipPercentage)
        print(stepperValue)
        print(billTextField.text!)
        print (round(split*100)/100)
        self.performSegue(withIdentifier: "goToResult", sender: self)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC=segue.destination as! ResultsViewController
            destinationVC.splitValue=String(split)
            
        }
    }
}

