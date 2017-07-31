//
//  DemoTableViewController.swift
//  SwiftyOnboardVC
//
//  Created by luke on 28/07/2017.
//  Copyright © 2017 Luke Chase. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {

    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorStyle = .none
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Row: \(indexPath.row + 1)"
        cell.backgroundColor = .randomColor()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let text = "Row: \(indexPath.row + 1) selected"
        let alert = UIAlertController(title: "Alert", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
}

extension CGFloat {
    static func randomFloat() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red: .randomFloat(), green: .randomFloat(), blue: .randomFloat(), alpha: 1.0)
    }
}
