//
//  AddNewCustomerViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/22/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mainViewNewCustomer: UIView!
    @IBOutlet weak var scrollViewNewCustomer: UIScrollView!
    var validation = Validation()
    var datePicker : UIDatePicker!
    var genderPicker : UIPickerView!
    @IBOutlet weak var txtCustomerID: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtBirthDate: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
//    var genders:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.saveNewCustomerButton()
        txtBirthDate.delegate = self
        txtGender.delegate = self
        
        
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtBirthDate)
        self.pickUpGender(self.txtGender)
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
        txtGender.text = Gender.AllCases[genderPicker.selectedRow(inComponent: 0)];
        txtGender.resignFirstResponder()
    }
    
    @objc func cancelClickPicker()
    {
        txtGender.resignFirstResponder()
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
        txtBirthDate.text = dateformatter1.string(from: datePicker.date)
        txtBirthDate.resignFirstResponder()
    }
    
    @objc func cancelClick()
    {
        txtBirthDate.resignFirstResponder()
    }
    
    private func saveNewCustomerButton()
    {
        let saveNewCustomerButton = UIBarButtonItem(title: "Save Customer", style: .plain, target: self, action: #selector(self.saveNewCustomer))
        self.navigationItem.rightBarButtonItem = saveNewCustomerButton
    }
    @objc func saveNewCustomer()
    {
        var validatedCustomerEmail = String()
        var validatedMobile = String()
        
        guard let newCustomerID = txtCustomerID.text else {return}
        guard let newCustomerFirstName = txtFirstName.text else {return}
        guard let newCustomerLastName = txtLastName.text else {return}
        guard let newCustomerGender = txtGender.text else {return}
        guard let newCustomerMobile = txtMobile.text else {return}
        guard let newCustomerBirthDate = txtBirthDate.text else {return}
        guard let newCustomerEmail = txtEmail.text else {return}
        guard let newCustomerUserName = txtUserName.text else {return}
        guard let newCustomerPassword = txtPassword.text else {return}
        guard let newCustomerAddress = txtAddress.text else {return}
        guard let newCustomerCity = txtCity.text else {return}
        
        //validating empty fields and showing alert for it
        if newCustomerID == "" && newCustomerFirstName == "" && newCustomerLastName == "" && newCustomerGender == "" && newCustomerMobile == "" && newCustomerBirthDate == "" && newCustomerEmail == "" && newCustomerUserName == "" && newCustomerPassword == "" && newCustomerAddress == "" && newCustomerCity == ""
        {
            showAlert(message: "Please Enter all fields")
            return
        }
        else if  newCustomerID == ""
        {
            showAlert(message: "Please Enter Customer ID")
            return
        }
        else if newCustomerFirstName == ""
        {
            showAlert(message: "Please Enter First Name")
            return
        }
        else if newCustomerLastName == ""
        {
            showAlert(message: "Please Enter Last Name")
            return
        }
        else if newCustomerGender == ""
        {
            showAlert(message: "Please Enter Gender")
            return
        }
        else if newCustomerMobile == ""
        {
            showAlert(message: "Please Enter Mobile No.")
            return
        }
        else if newCustomerBirthDate == ""
        {
            showAlert(message: "Please Enter Birth Date")
        }
        else if newCustomerEmail == ""
        {
            showAlert(message: "Please Enter Email")
            return
        }
        else if newCustomerUserName == ""
        {
            showAlert(message: "Please Enter UserName")
            return
        }
        else if newCustomerPassword == ""
        {
            showAlert(message: "Please Enter Password")
            return
        }
        else if newCustomerAddress == ""
        {
            showAlert(message: "Please Enter Address")
            return
        }
        else if newCustomerCity == ""
        {
            showAlert(message: "Please Enter City")
            return
        }
            
            // adding new customer
        else
        {
            if self.validation.isValidEmail(email: newCustomerEmail) == false
            {
                showAlert(message: "Invalid Email ID")
                return
            }
            else
            {
                validatedCustomerEmail = newCustomerEmail
            }
            
            if self.validation.isValidPhone(phone: newCustomerMobile) == false
            {
                showAlert(message: "Invalid Mobile Number")
                return
            }
            else
            {
                validatedMobile = newCustomerMobile
            }
            
            var tempGender:Gender
            
            if newCustomerGender == "Male"{
                tempGender = .Male
            }
            else if newCustomerGender == "Female"{
                tempGender = .Female
            }
            else{
                tempGender = .Other
            }
            
            DataStorage.getInstance().addCustomer(customer: Customer(id: newCustomerID, firstName: newCustomerFirstName, lastName: newCustomerLastName, gender: tempGender, mobileNumber: validatedMobile, birthDate: newCustomerBirthDate.toDate(), emailID: validatedCustomerEmail, userName: newCustomerUserName, password: newCustomerPassword, address: newCustomerAddress, city: newCustomerCity))
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
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}

extension AddNewCustomerViewController:UIPickerViewDelegate, UIPickerViewDataSource{
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
