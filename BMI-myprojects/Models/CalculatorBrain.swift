//
//  CalculatorBrain.swift
//  BMI-myprojects
//
//  Created by Aries Lam on 3/30/22.
//

import Foundation
import UIKit
struct CalculatorBrain{
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float, name: String) {
        let bmiValue = weight / pow(height,2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "You are underweight, \(name). You should have more snacks!", color: .yellow)
        }
        else if  bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Your BMI is normal. Great job, \(name)!", color: .green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "😱 You are overweight \(name). You should go jogging and do more workout", color: .red)
        }
    }
    
    func getBMIValue()-> String{
        let bmi = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmi
    }
    
    func getColor() -> UIColor{
        let color = bmi?.color
        return color ?? .clear
    }
    
    func getAdvice() -> String{
        let advice = bmi?.advice
        return advice ?? "No advice"
    }
}
