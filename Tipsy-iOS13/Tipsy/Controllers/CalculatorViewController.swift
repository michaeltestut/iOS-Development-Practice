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
    var split="0.00"


    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        stepperValue=Int(sender.value)
        splitNumberLabel.text=String(stepperValue)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billTotal = Double(billTextField.text!) ?? 0
        let splitAsDouble = ((billTotal*tipPercentage)+billTotal)/Double(stepperValue)
        split = String(format: "%.2f", splitAsDouble)
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
            destinationVC.splitValue=split
            destinationVC.peopleValue=String(stepperValue)
            destinationVC.tipPercentValue=String(format:"%.0f",tipPercentage*100)
            
        }
    }
}

