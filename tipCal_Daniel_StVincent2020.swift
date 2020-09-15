//
//  ViewController.swift
//  CodePathApp
//
//  Created by Daniel St Vincent on 9/14/20.
//  Copyright © 2020 Daniel St Vincent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UILabel!
    @IBOutlet weak var emptyField: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var FifteenPercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    @IBAction func calulatorField(_ sender: Any) {
        
        // get initial Bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        //Calculate tip and total
         let tip = bill * tipPercentages[FifteenPercent.selectedSegmentIndex]
        let total = bill + tip
        
//        tipAmount.text = "10.00"
//        totalAmount.text = "110.00"
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        
    }
}

