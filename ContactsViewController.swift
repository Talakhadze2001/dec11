//
//  ContactsViewControllet.swift
//  decider1
//
//  Created by Nika Talakhadze on 7/18/18.
//  Copyright © 2018 None. All rights reserved.
//

import Foundation

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


class ContactsViewController: UITableViewController {
    var contacts = [Contact]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsList", for: indexPath) as! ContactsTableViewCell
        cell.ContactsNameLabel.text = "Contact's name"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "displayContact":
            print("contact cell tapped")
            
        case "addContact":
            print("create Contact bar button item tapped")
            
        default:
            print("unexpected segue identifier")
            
            
        }
    }
   
    }

