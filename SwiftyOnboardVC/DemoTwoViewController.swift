//
//  DemoTwoViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//
// Demo of a walkthough with a navigation bar and skip button

import UIKit

class DemoTwoViewController: UIViewController, SwiftyOnboardVCDelegate {

    let walkthough = SwiftyOnboardVC()
    var showNavBar = true
    
    @IBAction func showWalkthough(_ sender: Any) {
        if let storyboard = self.storyboard {
            let viewOne = storyboard.instantiateViewController(withIdentifier: "ViewOne")
            let viewTwo = storyboard.instantiateViewController(withIdentifier: "ViewTwo")
            let viewThree = storyboard.instantiateViewController(withIdentifier: "ViewThree")
            let viewFour = storyboard.instantiateViewController(withIdentifier: "ViewFour")
            walkthough.viewControllers = [viewOne, viewTwo, viewThree, viewFour]
            walkthough.pageControlBottomMargin = 75
            walkthough.delegate = self
            
            //right button
            walkthough.bottomButtonText = "Use the app"
            walkthough.bottomButtonBackgroundColor = .clear
            walkthough.bottomButtonTextColor = .white
            walkthough.bottomButtonBottomMargin = 32
            walkthough.bottomButtonHeight = 26
            walkthough.bottomButtonFont = UIFont.systemFont(ofSize: 22, weight: UIFont.Weight.semibold)
            walkthough.bottomButtonImage = UIImage(named: "skip_arrow")!
            walkthough.bottomButtonImagePosition = .right
            
            walkthough.rightButtonText = "Skip"
            
            if showNavBar {
                //Embed in a navigation controller
                let navController = UINavigationController(rootViewController: walkthough)
                navController.navigationBar.barTintColor = .white
                
                //Set the title for the view controller
                walkthough.title = "Walkthough Demo"
                
                self.present(navController, animated: true, completion: nil)
            } else {
                self.present(walkthough, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func navControlSwitch(_ sender: UISwitch) {
        showNavBar = sender.isOn
    }
    
    func leftButtonPressed() {
        walkthough.previousPage()
    }
    
    func rightButtonPressed() {
        walkthough.skip()
    }
    
    func bottomButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Moving the buttons and page control on/off the screen
    func pageDidChange(currentPage: Int) {
        //Check the page number
        if currentPage == 2 || currentPage == 4 {
            //We are on page 2 or 4, remove the buttons
            walkthough.moveLeftButtonOffScreen()
            walkthough.moveRightButtonOffScreen()
            walkthough.movePageControlOffScreen()
            walkthough.moveBottomButtonOffScreen()
        } else {
            //We are on any other page, add the buttons
            walkthough.moveLeftButtonOnScreen()
            walkthough.moveRightButtonOnScreen()
            walkthough.movePageControlOnScreen()
            walkthough.moveBottomButtonOnScreen()
        }
        
        //Don't forget to update the view to get the animation
        walkthough.updateView()
    }
}
