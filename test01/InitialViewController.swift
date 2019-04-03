//
//  InitialViewController.swift
//  test01
//
//  Created by Alejandro  Rodriguez on 4/2/19.
//  Copyright © 2019 AthanTech. All rights reserved.
//

import UIKit

class InitViewController: UIViewController {
    
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func click(_ sender: Any) {
        
        guard let aValue = Int(aTextField.text!) else {
            print("Ingrese valor a")
            Util.showAlert(viewcontroller: self, title: "error", message: "Ingrese el valor a ")
            return
        }
        guard let bValue = Int(bTextField.text!) else {
            print("Ingrese valor b")
            self.showAlert(title: "Error", message: "Ingrese valor B")

            return
        }
    
        let total = aValue + bValue
        
        totalLabel.text = "\(total)"
        
    }

    @IBAction func siguiente(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc =  segue.destination as? DetailViewController
        vc?.texto = totalLabel.text!
    }
   
}
