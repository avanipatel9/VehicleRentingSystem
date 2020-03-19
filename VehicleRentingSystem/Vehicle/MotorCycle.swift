//
//  MotorCycle.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class MotorCycle : Vehicle//, Codable
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
    
    var maxTopSpeed : Int
    var milage : Double
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, manufacturerName: String, isSelfDrive: Bool, driver: Driver?, isInsured: Bool, insuranceProviderName: String, numberOfSeat: Int, fuelType: FuelType,isVehicleRented: Bool, maxTopSpeed: Int, milage: Double) {
        self.maxTopSpeed=maxTopSpeed
        self.milage=milage
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
        self.ratePerDay=RatePerDay.MOTORCYCLE
        self.ratePerKm=RatePerKM.MOTORCYCLE
    }
    
//    func Display()
//    {
//        print("-----------Vehicle Type : 🏍 Motorcycle ------------")
//        print("-----------------------------------------------")
//        print("\t VehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
//        print("\t Vehile Description : \(self.vehicleDescription)")
//        print("\t Manufacturer Name : \(self.manufacturerName)")
//        print("\t Number of seats : \(self.numberOfSeat)")
//        print("\t Fuel Type : \(self.fuelType)")
//        //print("\t Is Vehicle Rented : \(self.isVehicleRented)")
//        print("\t Rate/Day : \(self.ratePerDay.rawValue.currency())")
//        print("\t Rate/KM : \(self.ratePerKm.rawValue.currency())")
//        print("\t Max Top Speed : \(self.maxTopSpeed)")
//        print("\t Milage : \(self.milage)")
//        if self.isSelfDrive==false
//        {
//            print("\t is self Drive : No")
//            self.driver?.Display()
//        }
//        else
//        {
//            print("\t is self Drive : Yes")
//        }
//        
//    }
}
