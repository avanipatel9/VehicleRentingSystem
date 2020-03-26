//
//  Driver.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

class Driver:Person//, Codable
{
    var id: String
    
    var firstName: String
    
    var lastName: String
    
    var fullName: String
    {
        return "\(firstName) \(lastName)"
    }
    
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
    
    var drivingLicenceNumber : String
    var isHistroyCleared : Bool
    var salary : Double
    
    init(id: String, firstName: String, lastName: String, gender: Gender, mobileNumber: String, birthDate: Date, emailID: String, userName: String, password: String, drivingLicenceNumber: String, isHistroyCleared: Bool, salary: Double)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.mobileNumber=mobileNumber
        self.birthDate = birthDate
        self.emailID = emailID
        self.userName = userName
        self.password = password
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isHistroyCleared = isHistroyCleared
        self.salary = salary
    }
    
//    func isEmailValid(email:String)  -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//
//        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: email)
//    }
    
//    func Display() {
//        print("\t-----------------------------------------------")
//        print("\t--------------Driver Details---------------")
//        print("\t First Name : \(self.firstName)")
//        print("\t Last Name: \(self.lastName)")
//        print("\t Gender : \(self.gender)")
//        print("\t Mobile Number : \(self.mobileNumber)")
//        print("\t BirthDate : \(self.birthDate!.getForamttedDate())")
//        print("\t Emaild ID : \(self.emailID ?? "nil")")
//        print("\t User Name : \(self.userName)")
//        //Add extension for password encrypt decrypt
//        print("\t Password Encrypted : \(self.password.encryptPassword())")
//        print("\t Password Decrypted : \(self.password.decryptPassword())")
//        print("\t Age : \(self.age!)")
//        print("\t Driving Licence Number : \(self.drivingLicenceNumber)")
//    }
    
}
