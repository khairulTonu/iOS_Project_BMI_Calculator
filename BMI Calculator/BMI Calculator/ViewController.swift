//
//  ViewController.swift
//  BMI Calculator
//
//  Created by tonu on 9/3/17.
//  Copyright © 2017 tonu.app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var heightInFeetText: UITextField!
    
    @IBOutlet var heightInInchText: UITextField!
    
    @IBOutlet var weightInKgText: UITextField!
    
    @IBOutlet var bmiOutput: UILabel!
    
    @IBOutlet var bmiResult: UILabel!
    
    var heightInM: Double = 0.0
    
    var output: Double = 0.0
    
    @IBAction func submitBtn(_ sender: UIButton) {
        
        heightInM = ((Double(heightInFeetText.text!)! * 30.48) + (Double(heightInInchText.text!)! * 2.54))/100
        
        output =  Double(weightInKgText.text!)! / (heightInM * heightInM)
        
        if output < 18.0
        {
            bmiResult.text = "Underweight"
            bmiResult.textColor = UIColor.red
            bmiOutput.textColor = UIColor.red
        }
        else if output > 25.0
        {
            bmiResult.text = "Overweight"
            bmiResult.textColor = UIColor.red
            bmiOutput.textColor = UIColor.red
        }
        else
        {
            bmiResult.text = "Normal"
            bmiResult.textColor = UIColor.green
            bmiOutput.textColor = UIColor.green

        }
        
        bmiOutput.text = String(format: "%0.2f", output)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

