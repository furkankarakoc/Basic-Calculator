//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Furkan on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstnumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                result = firstnumber + secondNumber
                resultLabel.text = "Result: \(String(result))"
            }
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstnumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                result = firstnumber - secondNumber
                resultLabel.text = "Result: \(String(result))"
            }
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstnumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                result = firstnumber * secondNumber
                resultLabel.text = "Result: \(String(result))"
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstnumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                result = firstnumber / secondNumber
                resultLabel.text = "Result: \(String(result))"
            }
        }
    }
    
    @IBAction func clearClicked(_ sender: Any) {
        resultLabel.text = "Result: "
        firstText.text = ""
        secondText.text = ""
    }
}

