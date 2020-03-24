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
        private lazy var ownerList: [String : Owner] = [:]
        
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
    
    // function to add new owner
        func addOwner(owner: Owner) {
            self.ownerList.updateValue(owner, forKey: owner.id)
        }
    // function to get all customer
        func getAllOwners() -> [Owner] {
            return Array(ownerList.values);
        }
    
    var c1 = Customer(id: "C001", firstName: "Nikita", lastName: "Sandhu", gender: .Female, mobileNumber: "6478977890", birthDate: Date.from(year: 1994, month: 05, day: 27)!, emailID: "nikitasandhu@gmail.com", userName: "nikitasandhu", password: "nikita123", address: "55055 Springs Alley", city: "Chenglin")

    var c2 = Customer(id: "C002", firstName: "Jyothi", lastName: "Thomas", gender: .Female, mobileNumber: "4678977890", birthDate: Date.from(year: 1991, month: 07, day: 09)!, emailID: "thomasjyothi@gmail.com", userName: "thomasjyothi", password: "jyothi123", address: "3 Fieldstone Parkway", city: "North York")
    
    var c3 = Customer(id: "C003", firstName: "Monika", lastName: "Sharma", gender: .Female, mobileNumber: "4653177890", birthDate: Date.from(year: 1990, month: 10, day: 12)!, emailID: "monikasharma@gmail.com", userName: "monikasharma", password: "monika123", address: "13 Gender Drive", city: "Scarborough")
    
    var c4 = Customer(id: "C004", firstName: "Kashyap", lastName: "Zaveri", gender: .Male, mobileNumber: "4678977890", birthDate: Date.from(year: 1991, month: 07, day: 09)!, emailID: "kashyapzaveri@gmail.com", userName: "kashyapzaveri", password: "kashyap123", address: "7 Finch Avenue", city: "Markham")
    
    var c5 = Customer(id: "C005", firstName: "Prakash", lastName: "Rana", gender: .Male, mobileNumber: "4678123890", birthDate: Date.from(year: 1991, month: 11, day: 19)!, emailID: "prakashrana@gmail.com", userName: "prakashrana", password: "prakash123", address: "9 Bridgeway", city: "Brampton")
    
    var o1 = Owner(id: "O001", firstName: "Veronica", lastName: "Joe", gender: .Female, mobileNumber: "7894562580", birthDate: Date.from(year: 1983, month: 04, day: 25)!, emailID: "ver34Joe@gmail.com", userName: "Joe45", password: "Fcx4TG", companyTitle: "Engine Way", landlineNumber: "9854172", website: "engineWay@gmail.ca")
    
    var o2 = Owner(id: "O002", firstName: "Urban", lastName: "Emblem", gender: .Male, mobileNumber: "3227772384", birthDate: Date.from(year: 1976, month: 07, day: 21)!, emailID: "uemblem0@cornell.edu", userName: "uemblem0", password: "mK0rf9lk", companyTitle: "Rohan-Kub", landlineNumber: "7894562", website: "RohanKubb@gmail.com")
    
    var o3 = Owner(id: "O003", firstName: "Caria", lastName: "Woolmer", gender: .Male, mobileNumber: "3227772384", birthDate: Date.from(year: 1986, month: 07, day: 05)!, emailID: "cwoolmer0@geocities.com", userName: "cwoolmer0", password: "gDtPy0D", companyTitle: "Gottlieb-Bosco", landlineNumber: "7892062", website: "https://hhs.gov/consequat/varius.jsp")
    
    var o4 = Owner(id: "O004", firstName: "Barnie", lastName: "Durban", gender: .Female, mobileNumber: "658-35-7684", birthDate: Date.from(year: 1996, month: 06, day: 12)!, emailID: "bdurban1@samsung.com", userName: "bdurban1", password: "OJPJvWo", companyTitle: "Hodkiewicz Inc", landlineNumber: "6292062", website: "    https://nps.gov/aenean/auctor/gravida/sem.json")
    
    var o5 = Owner(id: "O005", firstName: "Abbey", lastName: "Exeter", gender: .Male, mobileNumber: "    407-15-7693", birthDate: Date.from(year: 1986, month: 02, day: 12)!, emailID: "    aexeter3@artisteer.com", userName: "aexeter3", password: "p6S5y5XvJUv4", companyTitle: "Ebert and Sons", landlineNumber:"277-40-4078", website: "    https://yolasite.com/at/turpis/a/pede.js")
    
    var d1 = Driver(id: "D001", firstName: "Zora", lastName: "Ferris", gender: .Female, mobileNumber: "4796672909", birthDate: Date.from(year: 1998, month: 07, day: 05)!, emailID: "zferris0@disqus.com", userName: "zferris0", password: "EAtVnCuCe6Us", drivingLicenceNumber: "nzQq2Tx5g5HE", isHistroyCleared: true, salary: 127.62)
    var d2 = Driver(id: "D002", firstName: "Appolonia", lastName: "Cattroll", gender: .Female, mobileNumber: "8983450523", birthDate: Date.from(year: 1995, month: 11, day: 19)!, emailID: "acattroll1@psu.edu", userName: "acattroll1", password: "x9e6xnkMpBr3", drivingLicenceNumber: "NfL6HThI", isHistroyCleared: true, salary: 179.17)
   var d3 = Driver(id: "D003", firstName: "Vernice", lastName: "McGougan", gender: .Female, mobileNumber: "4264923681", birthDate: Date.from(year: 1996, month: 09, day: 03)!, emailID: "vmcgougan2@umn.edu", userName: "vmcgougan2", password: "RE5IOBcVm", drivingLicenceNumber: "xxLTfp9", isHistroyCleared: true, salary: 147.80)
   var d4 = Driver(id: "D004", firstName: "Quinn", lastName: "Popple", gender: .Female, mobileNumber: "9566019213", birthDate: Date.from(year: 1999, month: 10, day: 12)!, emailID: "qpopple3@google.fr", userName: "qpopple3", password: "B9luyIYcUh", drivingLicenceNumber: "dTKgyU6SD52", isHistroyCleared: true, salary: 169.15)
    var d5 = Driver(id: "D005", firstName: "Samara", lastName: "Davenell", gender: .Female, mobileNumber: "9001558799", birthDate: Date.from(year: 1972, month: 11, day: 27)!, emailID: "sdavenell4@mlb.com", userName: "sdavenell4", password: "FZdE2ZnFVMb", drivingLicenceNumber: "HdGB1xhqPzGs", isHistroyCleared: false, salary: 177.47)
    
    // function to load all Customer Data
    func loadData()
    {
        customerList.updateValue(c1, forKey: c1.id)
        customerList.updateValue(c2, forKey: c2.id)
        customerList.updateValue(c3, forKey: c3.id)
        customerList.updateValue(c4, forKey: c4.id)
        customerList.updateValue(c5, forKey: c5.id)
        ownerList.updateValue(o1, forKey: o1.id)
        ownerList.updateValue(o2, forKey: o2.id)
        ownerList.updateValue(o3, forKey: o3.id)
        ownerList.updateValue(o4, forKey: o4.id)
        ownerList.updateValue(o5, forKey: o5.id)
    }
}
