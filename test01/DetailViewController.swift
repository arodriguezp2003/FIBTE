//
//  DetailViewController.swift
//  test01
//
//  Created by Alejandro  Rodriguez on 4/2/19.
//  Copyright © 2019 AthanTech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textoLabel: UILabel!
    
    var texto = "Sin datos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoLabel.text = texto
    }
    
    
    @IBAction func atras(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
