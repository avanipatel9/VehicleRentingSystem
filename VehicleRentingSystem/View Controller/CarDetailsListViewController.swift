//
//  CarDetailsListViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/27/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class CarDetailsListViewController: UIViewController {

    //@IBOutlet weak var tblOwners: UITableView!
    var cars : [Car] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Car Details List"
        cars = DataStorage.getInstance().getAllCars()
    }
    
   
}

extension CarDetailsListViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell") as! CarTableViewCell
        let car = cars[indexPath.row]
        cell.lblVehicleType.text = "Vehicle Type : Car"
        cell.label1.text = "Vehicle No. : \(car.vehicleIdentificationNumber)"
        cell.label2.text = "Manufacturer : \(car.manufacturerName)"
        cell.label3.text = "Description : \(car.vehicleDescription)"
        cell.label4.text = "No. of Seats : \(car.numberOfSeat)"
        cell.label5.text = "Fuel Type : \(car.fuelType)"
        cell.label6.text = "Rate Per Day : $ \(car.ratePerDay.rawValue)"
        cell.label7.text = "Rate Per Km : $ \(car.ratePerKm.rawValue)"
        cell.label8.text = "Car Colour : \(car.carColor)"
        cell.label9.text = "Car Type : \(car.carType)"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(422.0)
    }
    
}
