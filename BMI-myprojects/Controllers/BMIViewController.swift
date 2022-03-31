//
//  BMIViewController.swift
//  BMI-myprojects
//
//  Created by Aries Lam on 3/29/22.
//

import UIKit

class BMIViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider){
        heightLabel.text = String(format: "%.2f m", sender.value)
    }
    @IBAction func weightSliderChanged(_ sender: UISlider){
        weightLabel.text = String(format: "%.0f Kg", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
       
        
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let name = nameField.text ?? "mại"

        calculatorBrain.calculateBMI(height: height, weight: weight, name: name)
        
        if segue.identifier == "showResult"{
            let destination = segue.destination as! ResultViewController
            destination.bmiValue = calculatorBrain.getBMIValue()
            destination.advice = calculatorBrain.getAdvice()
            destination.color = calculatorBrain.getColor()
       
        }
        
    }
}

