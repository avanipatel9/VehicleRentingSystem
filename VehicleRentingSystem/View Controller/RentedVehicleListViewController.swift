//
//  RentedVehicleListViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/26/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class RentedVehicleListViewController: UIViewController {

    var customer : Customer?
    var rentedVehicles : [VehicleRent] = []
    var totalBillToPay = 0.0
    @IBOutlet weak var tblRentedVehicles: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rentedVehicles = customer!.getAllVehiclesRented()
        self.navigationItem.title = "Rented Vehicles List"
        self.totalBillToPay = customer!.getTotalBill()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.rentedVehicles = customer!.getAllVehiclesRented()
        tblRentedVehicles.reloadData()
    }
}

extension RentedVehicleListViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rentedVehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "RentedVehicleTableViewCell", for: indexPath) as! RentedVehicleTableViewCell
               let rentedVehicle = rentedVehicles[indexPath.row]
        cell.label1.text = "Rent Start Date : \(rentedVehicle.startDate!.getForamttedDate())"
        cell.label2.text = "Rent End Date : \(rentedVehicle.endDate!.getForamttedDate())"
        cell.label3.text = "Total Days : \(rentedVehicle.noOfDaysRented)"
        cell.label4.text = "Kilometer Drived : \(rentedVehicle.noOfKmDrived)"
        cell.label5.text = "Total Bill Amount : $ \(rentedVehicle.totalBillToPay)"
        cell.label6.text = "Vehicle No. : \(rentedVehicle.vehicle.vehicleIdentificationNumber)"
        cell.label7.text = "Manufacturer : \(rentedVehicle.vehicle.manufacturerName)"
        cell.label8.text = "Description : \(rentedVehicle.vehicle.vehicleDescription)"
        cell.label9.text = "Total Seats : \(rentedVehicle.vehicle.numberOfSeat)"
        cell.label10.text = "Fuel Type : \(rentedVehicle.vehicle.fuelType)"
        cell.label11.text = "Rate Per Day : $ \(rentedVehicle.vehicle.ratePerDay.rawValue)"
        cell.label12.text = "Rate Per KM : $ \(rentedVehicle.vehicle.ratePerKm.rawValue)"
        
        if rentedVehicle.vehicle.isSelfDrive == false
        {
            cell.label13.text = "Self Drive : No"
            cell.label14.text = "Driver Name : \(rentedVehicle.vehicle.driver!.fullName)"
        }
        else
        {
            cell.label13.text = "Self Drive : Yes"
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(593.0)
    }
    
}
