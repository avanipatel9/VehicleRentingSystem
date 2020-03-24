//
//  Person.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
enum Gender: String
{
    case Male="Male", Female="Female", Other="Other"
    
    static var AllCases :[String]{
        return ["\(Gender.Male)","\(Gender.Female)","\(Gender.Other)"]
    }
}

protocol Person
{
    var id : String { get set}
    var firstName : String { get set }
    var lastName : String { get set }
    var fullName : String { get }
    var gender : Gender { get set }
    var mobileNumber : String { get set }
    var birthDate : Date? { get set }
    var emailID : String? { get set }
    var userName : String { get set }
    var password : String { get set }
    var age:Int? { get }
}
