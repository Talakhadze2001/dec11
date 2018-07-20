//
//  DisplayContactsViewController.swift
//  decider1
//
//  Created by Nika Talakhadze on 7/18/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class DisplayContactsViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastnameTextfield: UITextField!
    
    @IBOutlet weak var numberTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameTextField.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save":
            // 1
            let contact = Contact()
            contact.nameOfContact = nameTextField.text ?? ""
            
            let destination = segue.destination as! ContactsViewController
            // 2
            destination.contacts.append(contact)

            // 2
            
            
            // 3
           
            
        case "cancel":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

