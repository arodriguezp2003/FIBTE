//
//  Extension+ViewController.swift
//  test01
//
//  Created by Alejandro  Rodriguez on 4/2/19.
//  Copyright © 2019 AthanTech. All rights reserved.
//

import UIKit

extension UIViewController {
     func showAlert(title: String, message: String) -> Void {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (alert) in
            print("presiono el ok")
        }
        let eliminar = UIAlertAction(title: "Eliminar", style:.default)
        
        alert.addAction(ok)
        alert.addAction(eliminar)
        self.present(alert, animated: true, completion: nil)
        
    }
}
