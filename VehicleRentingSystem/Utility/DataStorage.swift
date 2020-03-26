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
        private lazy var driverList: [String : Driver] = [:]
        private lazy var carList: [String : Car] = [:]
        private lazy var busList: [String : Bus] = [:]
        private lazy var motorCycleList: [String : MotorCycle] = [:]
        
        
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
            return Array(customerList.values)
        }
    
    // function to add new owner
        func addOwner(owner: Owner) {
            self.ownerList.updateValue(owner, forKey: owner.id)
        }
    // function to get all customer
        func getAllOwners() -> [Owner] {
            return Array(ownerList.values)
        }
    
    // function to add new driver
    func addDriver(driver: Driver) {
        self.driverList.updateValue(driver, forKey: driver.id)
    }
    //function to get all drivers
    func getAllDrivers() -> [Driver] {
        return Array(driverList.values)
    }
    
    //function to add car
    func addCar(car: Car)
    {
        self.carList.updateValue(car, forKey: car.vehicleIdentificationNumber)
    }
    //function to get all Cars
    func getAllCars() -> [Car]
    {
        return Array(carList.values)
    }
    
    //function to add bus
    func addBus(bus: Bus)
    {
        self.busList.updateValue(bus, forKey: bus.vehicleIdentificationNumber)
    }
    //function to get all buses
    func getAllBuses() -> [Bus] {
        return Array(busList.values)
    }
    
    //function to add motorcycle
       func addMotorCycle(motorCycle: MotorCycle)
       {
        self.motorCycleList.updateValue(motorCycle, forKey: motorCycle.vehicleIdentificationNumber)
       }
       //function to get all buses
       func getAllMotorCycles() -> [MotorCycle] {
           return Array(motorCycleList.values)
       }
    
    
//    func getDriverByID(id:String)-> Driver
//    {
//        var tempDriver: Driver
//        for driver in driverList
//        {
//            if driver.value.id == id
//            {
//                tempDriver = driver.value
//            }
//        }
//        return tempDriver
//    }
    
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
    
   var m1 = MotorCycle(vehicleIdentificationNumber: "V99JP7L7808854296", vehicleDescription: "4dr Crew Cab 4WD SB w/2HY (6.0L 8cyl gas/electric hybrid 4A)", manufacturerName: "Yamaha", isSelfDrive:true, driver: nil,isInsured: true, insuranceProviderName: "LIC", numberOfSeat: 2, fuelType: .DIESEL, isVehicleRented: true, maxTopSpeed: 80, milage: 150)
        var m2 = MotorCycle(vehicleIdentificationNumber: "4XZ2M7U06Z329433A", vehicleDescription: "Work Truck 2dr Regular Cab 8 ft. LB (4.3L 6cyl 4A)", manufacturerName: "Honda", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "Benny", numberOfSeat: 2, fuelType: .ELECTRIC, isVehicleRented: true, maxTopSpeed: 60, milage: 70)
        var m3 = MotorCycle(vehicleIdentificationNumber: "8H6S28DT397218808", vehicleDescription: "Grand Touring 4dr SUV (3.0L 6cyl 6A)", manufacturerName: "Ducati", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "Keith", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: false, maxTopSpeed: 100, milage: 90)
         var m4 = MotorCycle(vehicleIdentificationNumber: "6YV915045UG755121", vehicleDescription: "LT 4dr Crew Cab 4WD SB (3.7L 5cyl 4A)", manufacturerName: "Charlie", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "Marry", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: false, maxTopSpeed: 80, milage: 190)
         var m5 = MotorCycle(vehicleIdentificationNumber: "R895E663184691870", vehicleDescription: "4dr Sedan (4.8L 8cyl 7AM)", manufacturerName: "Kawasaki", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "PErlta", numberOfSeat: 2, fuelType: .PETROL, isVehicleRented: true, maxTopSpeed: 100, milage: 200)
        //create car
         var car1 = Car(vehicleIdentificationNumber: "Z5K39Z0W76366K354", vehicleDescription: "DX 4dr Sedan", manufacturerName: "Honda", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "Logan", numberOfSeat: 4, fuelType: .DIESEL, isVehicleRented: true, carType: "SUV", carColor: "Black")
            
        var car2 = Car(vehicleIdentificationNumber: "6V035N1185A022427", vehicleDescription: "Limited 4dr SUV (4.7L 8cyl 5A)", manufacturerName: "Suzuki", isSelfDrive: false, driver: nil, isInsured: true, insuranceProviderName: "Ben", numberOfSeat: 6, fuelType: .DIESEL, isVehicleRented: true, carType: "Sedan", carColor: "Gray")
         var car3 = Car(vehicleIdentificationNumber: "1V461X50812V17645", vehicleDescription: "SEL 4dr Sedan (3.0L 6cyl 4A)", manufacturerName: "Honda", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "William", numberOfSeat: 2, fuelType: .ELECTRIC, isVehicleRented: false, carType: "Compact", carColor: "White")
         var car4 = Car(vehicleIdentificationNumber: "4K0845277599C59LB", vehicleDescription: "4dr SUV AWD (2.5L 4cyl gas/electric hybrid CVT)", manufacturerName: "BMW", isSelfDrive: true, driver: nil, isInsured: true, insuranceProviderName: "Edward", numberOfSeat: 4, fuelType: .PETROL, isVehicleRented: true, carType: "Luxury", carColor: "Red")
         var car5 = Car(vehicleIdentificationNumber: "6V035N1185A022428", vehicleDescription: "4dr Sedan w/Technology Package (3.5L 6cyl 6A)", manufacturerName: "Toyoto", isSelfDrive: false, driver: nil, isInsured: true, insuranceProviderName: "Phenix", numberOfSeat: 8, fuelType: .DIESEL, isVehicleRented: false, carType: "Minivan", carColor: "Black")
        //create bus
         var b1 = Bus(vehicleIdentificationNumber: "5S579939423J74119", vehicleDescription: "xDrive30i 4dr SUV AWD (3.0L 6cyl 6M)", manufacturerName: "Leo", isSelfDrive: false, driver: nil, isInsured: true, insuranceProviderName: "Samuel", numberOfSeat: 12, fuelType: FuelType.DIESEL, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
         var b2 = Bus(vehicleIdentificationNumber: "K14G7289138870436", vehicleDescription: "Laramie 4dr Club Cab SB (3.7L 6cyl 4A)", manufacturerName: "Noha", isSelfDrive: false, driver: nil, isInsured: true, insuranceProviderName: "Antonie", numberOfSeat: 10, fuelType: FuelType.ELECTRIC, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
         var b3 = Bus(vehicleIdentificationNumber: "G9416715255045385", vehicleDescription: "S 4dr SUV AWD (2.5L 4cyl CVT)", manufacturerName: "Oliver", isSelfDrive: false, driver: nil,isInsured: true, insuranceProviderName: "Louis", numberOfSeat: 10, fuelType: FuelType.DIESEL, isVehicleRented: true, busType: "MiniBus", isServiceAvailable: true, isWIfiAvailable: true)
         var b4 = Bus(vehicleIdentificationNumber: "4XZ2M7U06Z329433A", vehicleDescription: "Sport 4dr SUV 4WD (3.5L 6cyl 5A)", manufacturerName: "Charles", isSelfDrive: false, driver: nil,isInsured: true, insuranceProviderName: "Andrew", numberOfSeat: 18, fuelType: FuelType.PETROL, isVehicleRented: true, busType: "Volvo", isServiceAvailable: true, isWIfiAvailable: true)
         var b5 = Bus(vehicleIdentificationNumber: "V99JP7L7808854296", vehicleDescription: "2dr Regular Cab LB (4.0L 6cyl 6M)", manufacturerName: "Mathaes", isSelfDrive: false, driver: nil,isInsured: true, insuranceProviderName: "Olivia", numberOfSeat: 8, fuelType: FuelType.ELECTRIC, isVehicleRented: true, busType: "MiniBus", isServiceAvailable: true, isWIfiAvailable: true)

    
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
        driverList.updateValue(d1, forKey: d1.id)
        driverList.updateValue(d2, forKey: d2.id)
        driverList.updateValue(d3, forKey: d3.id)
        driverList.updateValue(d4, forKey: d4.id)
        driverList.updateValue(d5, forKey: d5.id)
        carList.updateValue(car1, forKey: car1.vehicleIdentificationNumber)
        carList.updateValue(car2, forKey: car2.vehicleIdentificationNumber)
        carList.updateValue(car3, forKey: car3.vehicleIdentificationNumber)
        carList.updateValue(car4, forKey: car4.vehicleIdentificationNumber)
        carList.updateValue(car5, forKey: car5.vehicleIdentificationNumber)
        busList.updateValue(b1, forKey: b1.vehicleIdentificationNumber)
        busList.updateValue(b2, forKey: b2.vehicleIdentificationNumber)
        busList.updateValue(b3, forKey: b3.vehicleIdentificationNumber)
        busList.updateValue(b4, forKey: b4.vehicleIdentificationNumber)
        busList.updateValue(b5, forKey: b5.vehicleIdentificationNumber)
        motorCycleList.updateValue(m1, forKey: m1.vehicleIdentificationNumber)
        motorCycleList.updateValue(m2, forKey: m2.vehicleIdentificationNumber)
        motorCycleList.updateValue(m3, forKey: m3.vehicleIdentificationNumber)
        motorCycleList.updateValue(m4, forKey: m4.vehicleIdentificationNumber)
        motorCycleList.updateValue(m5, forKey: m5.vehicleIdentificationNumber)
        
    }
}
