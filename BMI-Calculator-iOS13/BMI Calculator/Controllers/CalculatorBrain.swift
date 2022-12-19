//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Michael Testut on 12/18/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    var bmi:Float?
    mutating func calculateBMI(height:Float,weight:Float){
        bmi=weight/pow(height, 2)
        
    }
    
    func getBMIValue()->String{
        let bmiValue=String(format:"%.1f",bmi ?? 0.0)
        return bmiValue
    }
}
