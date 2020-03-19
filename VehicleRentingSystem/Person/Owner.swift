//
//  Owner.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Owner:Person//, Codable
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
    
    var companyTitle:String
    var landlineNumber:String
    var website:String
    lazy var vehicleListOwned = [String:Vehicle]()
    var fullName:String{
        return "\(firstName) \(lastName)"
    }
    
    
    
    init(id:String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, companyTitle:String, landlineNumber:String, website:String) //throws
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        if mobileNumber.count != 10
        {
          print("Name :- \(firstName) has Invalid Mobile Number \(mobileNumber) : Cannot be less than 10 digits")
//            throw  CustomException.invalidNumber
            
        }
        self.mobileNumber = mobileNumber
        self.birthDate = birthDate
        //self.emailID = emailID
        self.userName = userName
        self.password = password
        self.companyTitle=companyTitle
        self.landlineNumber=landlineNumber
        self.website=website
        if isEmailValid(email: emailID)
                  {
                     
                      self.emailID=emailID
                  }
                   else
                   {
                       print("Invalid Email ID for \(self.firstName) : \(emailID) ")
//                       throw CustomException.invalidEmail
               
                   }
        
    }
    
    func addVehicleOwned(id:String,vehicle:Vehicle)
    {
        self.vehicleListOwned.updateValue(vehicle, forKey: id)
        
    }
    
    func isEmailValid(email:String)  -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
           
           let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailTest.evaluate(with: email)
       }
       
    
//    func Display() {
//        print("\n \n ***************** Owner Details ************************ \n")
//        print("---------Owner with Vehicle List----------\n")
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
//        if vehicleListOwned.count != 0
//        {
//            for vehicle in vehicleListOwned
//            {
//                print("\n---------Vehicle List Owned by \(firstName) -------------\n")
//                vehicle.value.Display()
//            }
//            print("-----------------------------------------------")
//        }
//        else
//        {
//            print("-----------------------------------------------")
//            print("\t \t No vehicle found for this Owner")
//            print("-----------------------------------------------")
//        }
//        
//    }
    
}
