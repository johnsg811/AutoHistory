//
//  ViewController.swift
//  automobile
//
//  Created by Johns George on 09/01/2018.
//  Copyright © 2018 Johns George. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CreateAccount(_ sender: Any) {
        Auth.auth().createUser(withEmail: Username.text!, password: Password.text!) { (user, error) in
            
            if error != nil{
                self.login()
            }else{
                print("User Created")
                self.login()
            }
        }
        
    }
    
    func login(){
        Auth.auth().signIn(withEmail: Username.text!, password: Password.text!) { (user, error) in
            
            if error != nil{
                print("Incorrect Username/Password")
            }else{
                print("Hello")
            }
        }
    }
    
}

