//
//  AddNewOwnerViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/23/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class AddNewOwnerViewController: UIViewController,UITextFieldDelegate {

    var validation = Validation()
    var datePicker : UIDatePicker!
    var genderPicker : UIPickerView!
    @IBOutlet weak var txtOwnerID: UITextField!
    @IBOutlet weak var txtOwnerFirstName: UITextField!
    @IBOutlet weak var txtOwnerLastName: UITextField!
    @IBOutlet weak var txtOwnerGender: UITextField!
    @IBOutlet weak var txtOwnerMobileNo: UITextField!
    @IBOutlet weak var txtOwnerBirthDate: UITextField!
    @IBOutlet weak var txtOwnerEmail: UITextField!
    @IBOutlet weak var txtOwnerUsername: UITextField!
    @IBOutlet weak var txtOwnerPassword: UITextField!
    @IBOutlet weak var txtCompanyTitle: UITextField!
    @IBOutlet weak var txtLandlineNo: UITextField!
    @IBOutlet weak var txtWebsite: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveNewOwnerButton()
        txtOwnerGender.delegate = self
        txtOwnerBirthDate.delegate = self
    }
    

    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtOwnerBirthDate)
        self.pickUpGender(self.txtOwnerGender)
    }
    
    func pickUpGender(_ textField: UITextField)
    {
        //Picker View
        self.genderPicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.genderPicker.backgroundColor = UIColor.white
        self.genderPicker.delegate = self;
        textField.inputView = self.genderPicker
        
        //Toolbar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .red
        toolBar.sizeToFit()
        
        //Adding Button Toolbar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewCustomerViewController.doneClickPicker))
        let spaceButton =  UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewCustomerViewController.cancelClickPicker))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func doneClickPicker()
    {
        txtOwnerGender.text = Gender.AllCases[genderPicker.selectedRow(inComponent: 0)];
        txtOwnerGender.resignFirstResponder()
    }
    
    @objc func cancelClickPicker()
    {
        txtOwnerGender.resignFirstResponder()
    }
    
    func pickUpDate(_ textField: UITextField)
    {
        //Date Picker
        self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.date
        textField.inputView = self.datePicker
        
        //Toolbar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = .red
        toolBar.sizeToFit()
        
        //Adding Button Toolbar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewCustomerViewController.doneClick))
        let spaceButton =  UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewCustomerViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    //Button Done and Cancel
    @objc func doneClick()
    {
        let dateformatter1 = DateFormatter()
        dateformatter1.dateStyle = .medium
        dateformatter1.timeStyle = .none
        txtOwnerBirthDate.text = dateformatter1.string(from: datePicker.date)
        txtOwnerBirthDate.resignFirstResponder()
    }
    
    @objc func cancelClick()
    {
        txtOwnerBirthDate.resignFirstResponder()
    }
    
    private func saveNewOwnerButton()
    {
        let saveNewOwnerButton = UIBarButtonItem(title: "Save Owner", style: .plain, target: self, action: #selector(self.saveNewOwner))
        self.navigationItem.rightBarButtonItem = saveNewOwnerButton
    }
    @objc func saveNewOwner()
    {
        //        let sb = UIStoryboard(name: "Main", bundle: nil)
        //        let addNewCustomerVC = sb.instantiateViewController(identifier: "AddNewCustomerViewController") as! AddNewCustomerViewController
        //        navigationController?.pushViewController(addNewCustomerVC, animated: true)
        
        var validatedOwnerEmail = String()
        var validatedOwnerMobile = String()
        var validatedLandLine = String()
        
        guard let newOwnerID = txtOwnerID.text else {return}
        guard let newOwnerFirstName = txtOwnerFirstName.text else {return}
        guard let newOwnerLastName = txtOwnerLastName.text else {return}
        guard let newOwnerGender = txtOwnerGender.text else {return}
        guard let newOwnerMobileNo = txtOwnerMobileNo.text else {return}
        guard let newOwnerBirthDate = txtOwnerBirthDate.text else {return}
        guard let newOwnerEmail = txtOwnerEmail.text else {return}
        guard let newOwnerUserName = txtOwnerUsername.text else {return}
        guard let newOwnerPassword = txtOwnerPassword.text else {return}
        guard let newCompanyTitle = txtCompanyTitle.text else {return}
        guard let newLandLineNo = txtLandlineNo.text else {return}
        guard let newWebsite = txtWebsite.text else {return}
        
        //validating empty fields and showing alert for it
        if newOwnerID == "" && newOwnerFirstName == "" && newOwnerLastName == "" && newOwnerGender == "" && newOwnerMobileNo == "" && newOwnerBirthDate == "" && newOwnerEmail == "" && newOwnerUserName == "" && newOwnerPassword == "" && newCompanyTitle == "" && newLandLineNo == "" && newWebsite == ""
        {
            showAlert(message: "Please Enter all fields")
            return
        }
        else if  newOwnerID == ""
        {
            showAlert(message: "Please Enter Customer ID")
            return
        }
        else if newOwnerFirstName == ""
        {
            showAlert(message: "Please Enter First Name")
            return
        }
        else if newOwnerLastName == ""
        {
            showAlert(message: "Please Enter Last Name")
            return
        }
        else if newOwnerGender == ""
        {
            showAlert(message: "Please Enter Gender")
            return
        }
        else if newOwnerMobileNo == ""
        {
            showAlert(message: "Please Enter Mobile No.")
            return
        }
        else if newOwnerBirthDate == ""
        {
            showAlert(message: "Please Enter Birth Date")
        }
        else if newOwnerEmail == ""
        {
            showAlert(message: "Please Enter Email")
            return
        }
        else if newOwnerUserName == ""
        {
            showAlert(message: "Please Enter UserName")
            return
        }
        else if newOwnerPassword == ""
        {
            showAlert(message: "Please Enter Password")
            return
        }
        else if newCompanyTitle == ""
        {
            showAlert(message: "Please Enter Company Name")
            return
        }
        else if newLandLineNo == ""
        {
            showAlert(message: "Please Enter Landline Number")
            return
        }
        else if newWebsite == ""
        {
            showAlert(message: "Please Enter Website")
            return
        }
            
            // adding new customer
        else
        {
            if self.validation.isValidPhone(phone: newOwnerMobileNo) == false
            {
                showAlert(message: "Invalid Mobile No")
                return
            }
            else
            {
                validatedOwnerMobile = newOwnerMobileNo
            }
            
            if self.validation.isValidEmail(email: newOwnerEmail) == false
            {
                showAlert(message: "Invalid Email ID")
                return
            }
            else
            {
                validatedOwnerEmail = newOwnerEmail
            }
            
            if self.validation.isValidPhone(phone: newLandLineNo) == false
            {
                showAlert(message: "Invalid Landline Number")
                return
            }
            else
            {
                validatedLandLine = newLandLineNo
            }
            
            var tempGender:Gender
            
            if newOwnerGender == "Male"{
                tempGender = .Male
            }
            else if newOwnerGender == "Female"{
                tempGender = .Female
            }
            else{
                tempGender = .Other
            }
            
            DataStorage.getInstance().addOwner(owner: Owner(id: newOwnerID, firstName: newOwnerFirstName, lastName: newOwnerLastName, gender: tempGender, mobileNumber: validatedOwnerMobile, birthDate: newOwnerBirthDate.toDate(), emailID: validatedOwnerEmail, userName: newOwnerUserName, password: newOwnerPassword, companyTitle: newCompanyTitle, landlineNumber: validatedLandLine, website: newWebsite))
            navigationController?.popViewController(animated: true)
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

}

extension AddNewOwnerViewController:UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Gender.AllCases.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Gender.AllCases[row];
    }
    
}
