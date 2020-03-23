//
//  String+Extension.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
extension String
{
    func toDate(withFormat format: String = "MMM dd, yyyy") -> Date
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = dateFormatter.date(from: self) else
        {
            preconditionFailure("Take a look to your format")
        }
        return date
    }
    
    func isValidEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isValidPhone() -> Bool
    {
        let PHONE_REGEX = "^(?:\\+?1[-.●]?)?\\(?([0-9]{3})\\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return phoneTest.evaluate(with: self)
    }
    
    func encryptPassword() -> String {
        let characters = Array(self)
        var encryptString:String=String();
        for char  in characters
        {
            var ascii = char.asciiValue!;
            ascii+=3;
            encryptString.append(Character(UnicodeScalar(ascii))) //https://www.dotnetperls.com/convert-int-character-swift
        }
        return encryptString;
    }
    func decryptPassword() -> String {
        let characters = Array(self)
        var decryptString:String=String();
        for char  in characters
        {
            var ascii = char.asciiValue!;
            ascii-=3;
            decryptString.append(Character(UnicodeScalar(ascii)))
        }
        return decryptString;
    }
}
