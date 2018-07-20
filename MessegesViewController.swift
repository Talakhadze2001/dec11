//
//  MessegesViewController.swift
//  decider1
//
//  Created by Nika Talakhadze on 7/18/18.
//  Copyright © 2018 None. All rights reserved.
//

import Foundation

import UIKit

class MessegesViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessegesList", for: indexPath) as! MessegesTableViewCell
        cell.MessegeNameLabel.text = "Person's name"
        
        return cell
    }
}
