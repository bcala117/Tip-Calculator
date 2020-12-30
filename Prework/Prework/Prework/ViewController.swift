//
//  ViewController.swift
//  Prework
//
//  Created by Brian Calabrese on 12/17/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var partySizeTextField: UITextField!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
  
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let P = Double(partySizeTextField.text!) ?? 0
        var split = 0.00;
        if P > 0
        {
            split = tip / P
            
        }
       
        let total = bill + tip
        
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        tipPerPersonLabel.text = String(format: "$%.2f", split)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
  
}



