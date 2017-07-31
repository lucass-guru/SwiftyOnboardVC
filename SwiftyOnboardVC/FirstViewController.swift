//
//  FirstViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBAction func button(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "Well done. You have shown an alert", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
