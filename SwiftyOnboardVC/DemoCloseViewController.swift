//
//  DemoCloseViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 28/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class DemoCloseViewController: UIViewController {
    @IBAction func button(_ sender: Any) {
        if let parentVC = self.parent as? SwiftyOnboardVC {
            parentVC.dismiss(animated: true, completion: nil)
        }
    }
}
