//
//  VehicleRent.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/19/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
struct VehicleRent//, Codable
{
    var startDate:Date?
    var endDate:Date?
    var noOfDaysRented:Int
    {
        return Calendar.current.dateComponents([.day], from: startDate!,to: endDate!).day!
    }
    var vehicle:Vehicle
    var noOfKmDrived:Double
    var totalBillToPay:Double
    {
        return Double(vehicle.ratePerDay.rawValue * self.noOfDaysRented)+(vehicle.ratePerKm.rawValue * self.noOfKmDrived)
    }
    //lazy var vehiclesRented = [String: Vehicle]()
    
    init(startDate:Date,endDate:Date,vechile:Vehicle,noOfKmDrived:Double) {
        self.startDate=startDate
        self.endDate=endDate
        self.noOfKmDrived=noOfKmDrived
        self.vehicle=vechile
    }
    
    //     init(from decoder: Decoder) throws {
    //        fatalError("init(from:) has not been implemented")
    //    }
    
//    func Display()
//    {
//        self.vehicle.Display()
//        print(" \n \t ***Rent Details: ")
//        print("\t \t Rent Start Date : \(self.startDate!.getForamttedDate())")
//        print("\t \t Rent End Date : \(self.endDate!.getForamttedDate())")
//        print("\t \t No. of days to rent : \(noOfDaysRented.days())")
//        print("\t \t No. of KM drived : \(self.noOfKmDrived.kiloMeter())")
//        print("\t \t Total Bill to Pay : \(self.totalBillToPay.currency())")
//    }
}
