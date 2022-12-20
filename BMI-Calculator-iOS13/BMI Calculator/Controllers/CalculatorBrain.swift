//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Michael Testut on 12/18/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue=weight/pow(height, 2)
        if bmiValue<18.5{
            bmi=BMI(value: bmiValue, advice: "Eat More Food Please", color: UIColor.blue)        }
        else if bmiValue<24.9{
            bmi=BMI(value: bmiValue, advice: "You are fit as a fiddle! Keep it up!", color: UIColor.green)
        }
        else{
            bmi=BMI(value: bmiValue, advice: "Eat more veggies and exercise!", color: UIColor.red)
        }
    }
    
    func getBMIValue()->String{
        let bmiValue=String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "None"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
}
