//
//  ViewController.swift
//  My First App
//
//  Created by Tarek Moubarak on 9/22/18.
//  Copyright © 2018 Tarek Moubarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textMessage: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func LoginButton(_ sender: Any) {
        if (email.text == "tarekmoubarak@icloud.com"){
            if (password.text == "Nadakhoury7006$"){
                textMessage.text = "Successfully Logged In!"
            } else{
                textMessage.text = "Wrong Password"
            }
        } else{
            //This
            textMessage.text =  "Wrong Email " + email!.text!
            //Or This
//            if let email = email.text {
//                textMessage.text =  "Wrong Email " + email
//            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view, typically from a nib.
        
        //To log in the console
        //print("hello world!")
    }

}

