//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
   let a = UserDefaults.standard
    

    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var lblInvalidUserName: UILabel!
    
   
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblInvalidPassword: UILabel!
    
    @IBOutlet weak var lblloginsuccess: UILabel!
    
    @IBOutlet weak var RememberMeswicth: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let username = a.string(forKey: "userID"){
            txtUserName.text = username
            if let password = a.string(forKey: "userPass"){
                txtPassword.text = password
                RememberMeswicth.isOn = true
            }
        }else{
            RememberMeswicth.isOn = false
        }
    }

    

    
    @IBAction func btnLogin(_ sender: UIButton) {
    
    
        lblInvalidUserName.text = ""
        lblInvalidPassword.text = ""
        lblloginsuccess.text = ""
        if txtUserName.text == "admin"{
            if txtPassword.text == "admin@123"{
                lblloginsuccess.text = "Login Successful"
                
                if RememberMeswicth.isOn{
                    a.set(txtUserName.text, forKey: "username")
                    a.set(txtPassword.text, forKey: "userPass")
                }else{
                    a.removeObject(forKey: "username")
                    a.removeObject(forKey: "userPass")
                }
                let c = UIStoryboard(name: "Main", bundle: nil)
                let b = c.instantiateViewController(withIdentifier: "studententry") as! StudentEntryViewController
                self.navigationController?.pushViewController(b, animated: true)
            }
            else
            {
                lblInvalidPassword.text="Invalid Password"
            }
        }
        else
        {
            lblInvalidUserName.text="Invalid Usernmae"
        }
    }
}





    


