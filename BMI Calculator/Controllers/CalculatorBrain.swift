//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by V K on 12.07.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
            switch bmiValue {
            case ...18.5:
                bmi = BMI(value: bmiValue, advice: "Eat more proteins and plant fats.", color: #colorLiteral(red: 0.2, green: 0.3, blue: 0.7, alpha: 1))

            case 18.5...24.9:
                bmi = BMI(value: bmiValue, advice: "You're doing great!", color: #colorLiteral(red: 0.4, green: 0.7, blue: 0.3, alpha: 1))
            case 25...:
                bmi = BMI(value: bmiValue, advice: "Stop consuming carbs!", color: #colorLiteral(red: 0.7, green: 0.2, blue: 0.3, alpha: 1))
                
            default:
                print("error")
            }
        
    }
    
    func getBMI() -> String {
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormatted
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "error"
    }
   
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
        
    }
            
        
    
}
