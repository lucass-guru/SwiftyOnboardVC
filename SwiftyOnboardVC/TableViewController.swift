//
//  ViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 27/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Demo \(indexPath.row + 1)"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.navigationBar.isHidden = false
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "demoOne", sender: self)
        case 1:
            self.performSegue(withIdentifier: "demoTwo", sender: self)
        case 2:
            self.performSegue(withIdentifier: "demoThree", sender: self)
        default:
            print("Row selecting error.")
        }
    }
}

