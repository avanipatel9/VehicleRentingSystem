//
//  DataStorage.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/22/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class DataStorage
{
    private static let dataStorage = DataStorage()
        private lazy var customerList: [String : Customer] = [:]
        
        private init(){}
           
        static func getInstance() -> DataStorage
        {
            return dataStorage
        }
    // function to add new customer
        func addCustomer(customer: Customer) {
            self.customerList.updateValue(customer, forKey: customer.id)
        }
    // function to get all customer
        func getAllCustomers() -> [Customer] {
            return Array(customerList.values);
        }
    
    var c1 = Customer(id: "C001", firstName: "Nikita", lastName: "Sandhu", gender: .Female, mobileNumber: "6478977890", birthDate: Date.from(year: 1994, month: 05, day: 27)!, emailID: "nikitasandhu@gmail.com", userName: "nikitasandhu", password: "nikita123", address: "55055 Springs Alley", city: "Chenglin")

    var c2 = Customer(id: "C002", firstName: "Jyothi", lastName: "Thomas", gender: .Female, mobileNumber: "4678977890", birthDate: Date.from(year: 1991, month: 07, day: 09)!, emailID: "thomasjyothi@gmail.com", userName: "thomasjyothi", password: "jyothi123", address: "3 Fieldstone Parkway", city: "North York")
    
    var c3 = Customer(id: "C003", firstName: "Monika", lastName: "Sharma", gender: .Female, mobileNumber: "4653177890", birthDate: Date.from(year: 1990, month: 10, day: 12)!, emailID: "monikasharma@gmail.com", userName: "monikasharma", password: "monika123", address: "13 Gender Drive", city: "Scarborough")
    
    var c4 = Customer(id: "C004", firstName: "Kashyap", lastName: "Zaveri", gender: .Male, mobileNumber: "4678977890", birthDate: Date.from(year: 1991, month: 07, day: 09)!, emailID: "kashyapzaveri@gmail.com", userName: "kashyapzaveri", password: "kashyap123", address: "7 Finch Avenue", city: "Markham")
    
    var c5 = Customer(id: "C005", firstName: "Prakash", lastName: "Rana", gender: .Male, mobileNumber: "4678123890", birthDate: Date.from(year: 1991, month: 11, day: 19)!, emailID: "prakashrana@gmail.com", userName: "prakashrana", password: "prakash123", address: "9 Bridgeway", city: "Brampton")
    
    // function to load all Customer Data
    func loadData()
    {
        customerList.updateValue(c1, forKey: c1.id)
        customerList.updateValue(c2, forKey: c2.id)
        customerList.updateValue(c3, forKey: c3.id)
        customerList.updateValue(c4, forKey: c4.id)
        customerList.updateValue(c5, forKey: c5.id)
    }
}
