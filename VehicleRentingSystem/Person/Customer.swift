//
//  Customer.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: Person//, Codable
{
    
    var id: String
    
    var firstName: String
    
    var lastName: String
    
    var gender: Gender
    
    var mobileNumber: String
    
    var birthDate: Date?
    
    var emailID: String?
    
    var userName: String
    
    var password: String
    
    var age: Int?
    {
        return Calendar.current.dateComponents([.year], from: birthDate!,to: Date()).year
    }
    
    var address: String
    var city: String
    
    //lazy var customerDetails = [String : Customer]()
    
    lazy var vehicleListRented = [String : VehicleRent]()
    
    
    init(id:String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, address: String, city: String) throws
    {
        
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        if mobileNumber.count != 10
        {
          print("Name :- \(firstName) has  Invalid Mobile Number \(mobileNumber) : Cannot be less than 10 digits")
            throw  CustomException.invalidNumber
            
        }
        self.mobileNumber=mobileNumber
       // self.mobileNumber = mobileNumber
        self.birthDate = birthDate
        
       // self.emailID = emailID
        self.userName = userName
        self.password = password
        self.address = address
        self.city = city
        self.address = address
        self.city = city
        if isEmailValid(email: emailID)
           {
              
               self.emailID=emailID
           }
            else
            {
                print("Invalid Email ID for \(self.firstName) : \(emailID) ")
                throw CustomException.invalidEmail
        
            }
    }
    
//    func isEmailValid(email:String)  -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: email)
//    }
    
    func addVehicleListRented(vehicleRented: VehicleRent, vehicleIdentificationNumber: String)
    {
        vehicleListRented.updateValue(vehicleRented, forKey: vehicleIdentificationNumber)
    }
    
    func removeVehicleList(vehicleRented: VehicleRent, vehicleIdentificationNumber: String)
    {
        vehicleListRented.removeValue(forKey: vehicleIdentificationNumber)
    }
    
//    func Display()
//    {
//        print("\n \n ***************** Customer Details ************************ \n")
//        print("---------Customer with Vehicle List----------\n")
//        print("First Name : \(self.firstName)")
//        print("Last Name: \(self.lastName)")
//        print("Gender : \(self.gender)")
//        print("Mobile Number : \(self.mobileNumber)")
//        print("BirthDate : \(self.birthDate!.getForamttedDate())")
//        print("Emaild ID : \(self.emailID ?? "nil")")
//        print("User Name : \(self.userName)")
//        //Add extension for password encrypt decrypt
//        print("Password Encrypted : \(self.password.encryptPassword())")
//        print("Password Decrypted : \(self.password.decryptPassword())")
//        print("Age : \(self.age!)")
//        
//        if vehicleListRented.count != 0
//        {
//            var grandTotal = 0.0
//            for vehicle in vehicleListRented
//            {
//                print("\n---------Vehicle List Rented by \(firstName) -------------\n")
//                vehicle.value.Display()
//                grandTotal = grandTotal + vehicle.value.totalBillToPay
//            }
//            print("-----------------------------------------------")
//            print("\t \t Grand Total Bill : \(grandTotal)")
//            print("-----------------------------------------------")
//        }
//        else
//        {
//            print("-----------------------------------------------")
//            print("\t \t No vehicle found for this customer")
//            print("-----------------------------------------------")
//        }
//    }
}
