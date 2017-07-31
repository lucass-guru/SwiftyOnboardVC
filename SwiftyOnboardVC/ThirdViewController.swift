//
//  ThirdViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var num = 1
    @IBAction func button(_ sender: Any) {
        num += 1
        label.text = "\(num)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(num)"
    }
}
