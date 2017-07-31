//
//  SecondViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func button(_ sender: Any) {
        let alert = UIAlertController(title: "Action Sheet", message: "Well done you have shown an action sheet.", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "I am amazing!", style: .default, handler: { (alert) in
            let a = UIAlertController(title: "Amazing!", message: "Yes you are!", preferredStyle: .alert)
            a.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(a, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
