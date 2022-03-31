//
//  ResultViewController.swift
//  BMI-myprojects
//
//  Created by Aries Lam on 3/29/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        adviceLabel.textColor = .blue
        view.backgroundColor = color
    }
    
    @IBAction func recalculateBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

}
