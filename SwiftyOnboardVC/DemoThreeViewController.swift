//
//  DemoThreeViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//
// Demo using table view and collection view

import UIKit

class DemoThreeViewController: UIViewController, SwiftyOnboardVCDelegate {

    let walkthough = SwiftyOnboardVC()
    
    @IBAction func showWalkthough(_ sender: Any) {
        if let storyboard = self.storyboard {
            let tableView = storyboard.instantiateViewController(withIdentifier: "DemoTableView")
            let collectionView = storyboard.instantiateViewController(withIdentifier: "DemoCollectionView")
            let close = storyboard.instantiateViewController(withIdentifier: "DemoClose")
            
            walkthough.viewControllers = [tableView, collectionView, close]
            walkthough.showLeftButton = false
            walkthough.showRightButton = false
            walkthough.hideStatusBar = true
            walkthough.bounces = false
            walkthough.delegate = self
            self.present(walkthough, animated: true, completion: nil)
        }
    }
}
