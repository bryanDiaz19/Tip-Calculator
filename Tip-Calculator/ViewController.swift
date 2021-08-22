//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Bryan Diaz  on 8/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipAmountField: UILabel!
    @IBOutlet weak var totalAmountField: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
    
    let bill = Double(billAmountField.text!) ?? 0
    
    
    let tipPercentages = [0.10, 0.15, 0.20]
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total =  bill + tip
  
    
    tipAmountField.text = String(format: "$%.2f", tip)
    totalAmountField.text = String(format: "$%.2f", total)

    }

}

