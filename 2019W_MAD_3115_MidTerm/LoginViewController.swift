//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var lblInvalidUserName: UILabel!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblIvalidPassword: UILabel!
    
    @IBOutlet weak var RememberMeSwicth: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnLogin(_ sender: UIButton) {
    }
    
}

