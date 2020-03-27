//
//  DriverDetailsViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/27/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class DriverDetailsViewController: UIViewController {

    var driver : Driver?
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Driver Details"
        displaySelectedDriverDetails()
    }
    
    func displaySelectedDriverDetails()
    {
        guard let driverFullName = self.driver?.fullName else {
            return
        }
        guard let driverGender = self.driver?.gender else {
            return
        }
        guard  let driverMobile = self.driver?.mobileNumber else {
            return
        }
        guard let driverAge = self.driver?.age else {
            return
        }
        guard let driverEmail = self.driver?.emailID else {
            return
        }
        guard let drivingLicenceNo = self.driver?.drivingLicenceNumber else {
            return
        }
        guard let drivingHistoryClearedStatus = self.driver?.isHistroyCleared else {
            return
        }
        guard let salary = self.driver?.salary else {
            return
        }
        
        label1.text = "Name : \(driverFullName)"
        label2.text = "Gender : \(driverGender)"
        label3.text = "Age : \(driverAge)"
        label4.text = "Mobile No. : \(driverMobile)"
        label5.text = "Email ID : \(driverEmail)"
        label6.text = "Driving Licence No. : \(drivingLicenceNo)"
        if drivingHistoryClearedStatus == true
        {
            label7.text = "Is Driving History Cleared? : Yes"
        }
        else
        {
            label7.text = "Is Driving History Cleared? : No"
        }
        
        label8.text = "Salary : \(salary)"
    }
    
}
