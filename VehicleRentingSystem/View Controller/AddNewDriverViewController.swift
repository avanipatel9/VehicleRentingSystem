//
//  AddNewDriverViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/25/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class AddNewDriverViewController: UIViewController,UITextFieldDelegate {
    
    let boolean = ["Yes", "No"]
    var validation = Validation()
    var datePicker : UIDatePicker!
    var genderPicker : UIPickerView!
    var currentTxtFldTag : Int = 10
    
    
    @IBOutlet weak var txtDriverID: UITextField!
    @IBOutlet weak var txtDriverFirstName: UITextField!
    @IBOutlet weak var txtDriverLastName: UITextField!
    @IBOutlet weak var txtDriverGender: UITextField!
    @IBOutlet weak var txtDriverMobileNo: UITextField!
    @IBOutlet weak var txtDriverBirthDate: UITextField!
    @IBOutlet weak var txtDriverEmail: UITextField!
    @IBOutlet weak var txtDriverUserName: UITextField!
    @IBOutlet weak var txtdDriverPassword: UITextField!
    @IBOutlet weak var txtDrivingLicenceNo: UITextField!
    @IBOutlet weak var txtDrivingHistoryCleared: UITextField!
    @IBOutlet weak var txtDriverSalary: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.saveNewDriverButton()
        
        txtDriverGender.tag = 10
        txtDrivingHistoryCleared.tag = 20
        
        txtDriverGender.delegate = self
        txtDriverBirthDate.delegate = self
        txtDrivingHistoryCleared.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtDriverBirthDate)
        self.pickUpGender(self.txtDriverGender)
        self.pickUpGender(self.txtDrivingHistoryCleared)
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
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewDriverViewController.doneClickPicker))
        let spaceButton =  UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewDriverViewController.cancelClickPicker))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func doneClickPicker()
    {
        txtDriverGender.resignFirstResponder()
        txtDrivingHistoryCleared.resignFirstResponder()
    }
    
    @objc func cancelClickPicker()
    {
        txtDriverGender.resignFirstResponder()
        txtDrivingHistoryCleared.resignFirstResponder()
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
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewDriverViewController.doneClick))
        let spaceButton =  UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewDriverViewController.cancelClick))
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
        txtDriverBirthDate.text = dateformatter1.string(from: datePicker.date)
        txtDriverBirthDate.resignFirstResponder()
    }
    
    @objc func cancelClick()
    {
        txtDriverBirthDate.resignFirstResponder()
        
    }
    
    private func saveNewDriverButton()
    {
        let saveNewDriverButton = UIBarButtonItem(title: "Save Driver", style: .plain, target: self, action: #selector(self.saveNewDriver))
        self.navigationItem.rightBarButtonItem = saveNewDriverButton
    }
        
    @objc func saveNewDriver()
        {
            
            var validatedDriverEmail = String()
            
            guard let newDriverID = txtDriverID.text else {return}
            guard let newDriverFirstName = txtDriverFirstName.text else {return}
            guard let newDriverLastName = txtDriverLastName.text else {return}
            guard let newDriverGender = txtDriverGender.text else {return}
            guard let newDriverMobileNo = txtDriverMobileNo.text else {return}
            guard let newDriverBirthDate = txtDriverBirthDate.text else {return}
            guard let newDriverEmail = txtDriverEmail.text else {return}
            guard let newDriverUserName = txtDriverUserName.text else {return}
            guard let newDriverPassword = txtdDriverPassword.text else {return}
            guard let newDrivingLicenceNo = txtDrivingLicenceNo.text else {return}
            guard let newDrivingHistoryCleared = txtDrivingHistoryCleared.text else {return}
            guard let newDriverSalary = txtDriverSalary.text else {return}
            
            //validating empty fields and showing alert for it
            if newDriverID == "" && newDriverFirstName == "" && newDriverLastName == "" && newDriverGender == "" && newDriverMobileNo == "" && newDriverBirthDate == "" && newDriverEmail == "" && newDriverUserName == "" && newDriverPassword == "" && newDrivingLicenceNo == "" && newDrivingHistoryCleared == "" && newDriverSalary == ""
            {
                showAlert(message: "Please Enter all fields")
                return
            }
            else if  newDriverID == ""
            {
                showAlert(message: "Please Enter Customer ID")
                return
            }
            else if newDriverFirstName == ""
            {
                showAlert(message: "Please Enter First Name")
                return
            }
            else if newDriverLastName == ""
            {
                showAlert(message: "Please Enter Last Name")
                return
            }
            else if newDriverGender == ""
            {
                showAlert(message: "Please Enter Gender")
                return
            }
            else if newDriverMobileNo == ""
            {
                showAlert(message: "Please Enter Mobile No.")
                return
            }
            else if newDriverBirthDate == ""
            {
                showAlert(message: "Please Enter Birth Date")
            }
            else if newDriverEmail == ""
            {
                showAlert(message: "Please Enter Email")
                return
            }
            else if newDriverUserName == ""
            {
                showAlert(message: "Please Enter UserName")
                return
            }
            else if newDriverPassword == ""
            {
                showAlert(message: "Please Enter Password")
                return
            }
            else if newDrivingLicenceNo == ""
            {
                showAlert(message: "Please Enter Driving Licence No.")
                return
            }
            else if newDrivingHistoryCleared == ""
            {
                showAlert(message: "Please Enter Driving History Cleared Status")
                return
            }
            else if newDriverSalary == ""
            {
                showAlert(message: "Please Enter Salary")
                return
            }
                
                // adding new customer
            else
            {
                if self.validation.isValidEmail(email: newDriverEmail) == false
                {
                    showAlert(message: "Invalid Email ID")
                    return
                }
                else
                {
                    validatedDriverEmail = newDriverEmail
                }
                
                var tempGender:Gender
                
                if newDriverGender == "Male"{
                    tempGender = .Male
                }
                else if newDriverGender == "Female"{
                    tempGender = .Female
                }
                else{
                    tempGender = .Other
                }
                
                var tempDrivingHystory:Bool
                
                if newDrivingHistoryCleared == "Yes"
                {
                    tempDrivingHystory = true
                }
                else
                {
                    tempDrivingHystory = false
                }
                
                var tempSalary: Double
                tempSalary = Double(newDriverSalary)!
                
                DataStorage.getInstance().addDriver(driver: Driver(id: newDriverID, firstName: newDriverFirstName, lastName: newDriverLastName, gender: tempGender, mobileNumber: newDriverMobileNo, birthDate: newDriverBirthDate.toDate(), emailID: validatedDriverEmail, userName: newDriverUserName, password: newDriverPassword, drivingLicenceNumber: newDrivingLicenceNo, isHistroyCleared: tempDrivingHystory, salary: tempSalary))
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

    extension AddNewDriverViewController:UIPickerViewDelegate, UIPickerViewDataSource
    {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1;
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if currentTxtFldTag==10
            {
                return Gender.AllCases.count;
            }
            else
            {
                return boolean.count
            }
            
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
        {
            if currentTxtFldTag==10
            {
                return Gender.AllCases[row];
            }
            else
            {
                return boolean[row]
            }
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
             if currentTxtFldTag == 10
               {
                   txtDriverGender.text = Gender.AllCases[row];
               }
               else
               {
                   txtDrivingHistoryCleared.text = boolean[row]
               }
        }
        
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {

            if textField.tag == 10  // gender option
            {
                currentTxtFldTag = 10
            }
            else  // driving history status option
            {
                currentTxtFldTag = 20
            }
            return true
        }
}

