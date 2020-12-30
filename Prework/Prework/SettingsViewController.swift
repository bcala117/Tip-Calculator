//
//  SettingsViewController.swift
//  Prework
//
//  Created by Brian Calabrese on 12/28/20.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var tip1Label: UIView!
    @IBOutlet weak var darkSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func segment1DefaultTextField(_ sender: Any) {
    
    }
    
    @IBAction func darkModeSwitch(_ sender: Any) {
        if darkSwitch.isOn == true{
            overrideUserInterfaceStyle = .dark
        }
        else
        {
            overrideUserInterfaceStyle = .light
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
