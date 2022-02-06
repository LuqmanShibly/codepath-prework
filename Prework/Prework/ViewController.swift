//
//  ViewController.swift
//  Prework
//
//  Created by Luqman Shibly on 2/6/22.
//  Creates an application that calculates the tip
//  of a bill given the percentage by the user
//  additionally, it calculates the tax of the bill
//  assuming the tax is 10%

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var taxAmount: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tax = bill * 0.10
        let total = tip + bill + tax
        
        // update tipAmountLabel
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update totalAmount
        totalLabel.text = String(format: "$%.2f", total)
        // update taxAmount
        taxAmount.text  = String(format: "$%.2f", tax)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

