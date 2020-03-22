//
//  ViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/18/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRememberMe: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        getRememberMeValues()
        // Do any additional setup after loading the view.
    }
    
    private func getRememberMeValues()
    {
        let userdefault = UserDefaults.standard
        if let email = userdefault.string(forKey: "userEmail")
        {
            txtUserName.text = email
            
            if let pwd = userdefault.string(forKey: "userPassword")
            {
                txtPassword.text = pwd
            }
        }
    }

    @IBAction func btnNextClick(_ sender: UIButton) {
        guard  let userEmail = txtUserName.text else {return}
        guard let userPassword = txtPassword.text else {return}
        //reading Admin Plist
        if let path = Bundle.main.path(forResource: "Admin", ofType: "plist")
        {
            if let dictionary = NSMutableDictionary(contentsOfFile: path)
            {
                if let admins = dictionary["admins"] as? [[String:String]]
                {
                    var flag = false
                    for admin in admins
                    {
                        // validating user for login
                        if admin["username"] == userEmail && admin["password"] == userPassword
                        {
                            flag = true
                        }
                    }
                    if flag == true
                    {
                        let userdefault = UserDefaults.standard
                        if switchRememberMe.isOn
                        {
                            // saving user inputs to userdefaults
                            userdefault.setValue(userEmail, forKey: "userEmail")
                            userdefault.set(userPassword, forKey: "userPassword")
                        }
                        else
                        {
                            //removing incorrect user inputs from userdefaults
                            userdefault.removeObject(forKey: "userEmail")
                            userdefault.removeObject(forKey: "userPassword")
                        }
                    }
                    //showing alert for empty fields
                    else{
                        if self.txtUserName.text == ""
                        {
                            showAlert(message: "Please Enter Username")
                            return
                        }
                        else if self.txtPassword.text == ""
                        {
                            showAlert(message: "Please Enter Password")
                            return
                        }
                        // showing alert for incorrect inputs
                        else
                        {
                            showAlert(message: "Try Again, Username/Password is incorrect")
                            return
                        }
                    }
                }
            }
        }
    }
    
    // function to show alert
        func showAlert(message: String)
        {
            let alert = UIAlertController(title: "Error", message:message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        
    // function to perform logout
        @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
        {
            print("Logout")
        }

}

