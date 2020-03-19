//
//  Car.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Car: Vehicle
{
    
    var vehicleIdentificationNumber: String
    
    var vehicleDescription: String
    
    var manufacturerName: String
    
    var isSelfDrive: Bool
    
    var driver: Driver?
    
    var isInsured: Bool
    
    var insuranceProviderName: String
    
    var numberOfSeat: Int
    
    var fuelType: FuelType
    
    var isVehicleRented: Bool
    
    var ratePerDay: RatePerDay
    
    var ratePerKm: RatePerKM
    
    var carType : String
    var carColor : String
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String,isSelfDrive: Bool,driver: Driver?, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, carType: String, carColor: String) {
        self.carType = carType
        self.carColor = carColor
        self.vehicleIdentificationNumber=vehicleIdentificationNumber
        self.vehicleDescription=vehicleDescription
        self.manufacturerName=manufacturerName
        self.isSelfDrive=isSelfDrive
        if self.isSelfDrive==false{
            self.driver=driver
        }
        else
        {
            self.driver = nil
        }
        self.isInsured=isInsured
        self.insuranceProviderName=insuranceProviderName
        self.numberOfSeat=numberOfSeat
        self.fuelType=fuelType
        self.isVehicleRented=isVehicleRented
        self.ratePerDay=RatePerDay.CAR
        self.ratePerKm=RatePerKM.CAR
    }
    
//    func Display()
//    {
//        print("--------------Vehicle Type : 🚗 Car ---------------")
//        print("-----------------------------------------------")
//        print("\t VehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
//        print("\t Vehile Description : \(self.vehicleDescription)")
//        print("\t Manufacturer Name : \(self.manufacturerName)")
//        print("\t Number of seats : \(self.numberOfSeat)")
//        print("\t Fuel Type : \(self.fuelType)")
//        //print("\t Is Vehicle Rented : \(self.isVehicleRented)")
//        print("\t Rate/Day : \(self.ratePerDay.rawValue.currency())")
//        print("\t Rate/KM : \(self.ratePerKm.rawValue.currency())")
//        print("\t Car Type : \(self.carType)")
//        print("\t Car Color : \(self.carColor)")
//        if self.isSelfDrive==false
//        {
//            print("\t is self Drive : No")
//            self.driver?.Display()
//        }
//        else
//        {
//            print("\t is self Drive : Yes")
//        }
//    }
}
