//
//  ViewController.swift
//  decider1
//
//  Created by Macbook pro on 7/17/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBAction func contactsbutton(_ sender: Any) {
        
    }
    
    @IBAction func messegebutton(_ sender: Any) {
        
    }
    
    
    @IBAction func LogoutPressed(_ sender: Any) {
    
    
        do {
            
          try Auth.auth().signOut()
            }
        catch {
            print("error")
        }
    }
        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

