//
//  BusDetailsViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/27/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class BusDetailsViewController: UIViewController {

    var buses : [Bus] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Bus Details List"
        buses = DataStorage.getInstance().getAllBuses()
    }
    
}

extension BusDetailsViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BusTableViewCell") as! BusTableViewCell
            let bus = buses[indexPath.row]
            cell.lblVehicleType.text = "Vehicle Type : Bus"
            cell.label1.text = "Vehicle No. : \(bus.vehicleIdentificationNumber)"
            cell.label2.text = "Manufacturer : \(bus.manufacturerName)"
            cell.label3.text = "Description : \(bus.vehicleDescription)"
            cell.label4.text = "No. of Seats : \(bus.numberOfSeat)"
            cell.label5.text = "Fuel Type : \(bus.fuelType)"
            cell.label6.text = "Rate Per Day : $ \(bus.ratePerDay.rawValue)"
            cell.label7.text = "Rate Per Km : $ \(bus.ratePerKm.rawValue)"
            cell.label8.text = "Bus Type: \(bus.busType)"
        if bus.isWifiAvailable == true
        {
            cell.label9.text = "Is Wifi Available : Yes"
        }
        else
        {
            cell.label9.text = "Is Wifi Available : No"
        }
        
        if bus.isServiceAvailable == true
        {
            cell.label10.text = "Service Availability : Yes"
        }
        else
        {
            cell.label10.text = "Service Availability : No"
        }
            
            
            return cell
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(466.0)
        }
    
    
    
}
