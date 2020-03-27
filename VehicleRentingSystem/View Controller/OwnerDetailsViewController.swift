//
//  OwnerDetailsViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/27/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class OwnerDetailsViewController: UIViewController {

    var owner : Owner?
    
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
        self.navigationItem.title = "Owner Details"
        displaySelectedOwnerDetails()
    }
    
    
    func displaySelectedOwnerDetails()
    {
        guard let ownerFullName = self.owner?.fullName else {
            return
        }
        guard let ownerGender = self.owner?.gender else {
            return
        }
        guard  let ownerMobile = self.owner?.mobileNumber else {
            return
        }
        guard let ownerAge = self.owner?.age else {
            return
        }
        guard let ownerEmail = self.owner?.emailID else {
            return
        }
        guard let companyTitle = self.owner?.companyTitle else {
            return
        }
        guard let landlineNo = self.owner?.landlineNumber else {
            return
        }
        guard let website = self.owner?.website else {
            return
        }
        
        label1.text = "Name : \(ownerFullName)"
        label2.text = "Gender : \(ownerGender)"
        label3.text = "Age : \(ownerAge)"
        label4.text = "Mobile No. : \(ownerMobile)"
        label5.text = "Email ID : \(ownerEmail)"
        label6.text = "Company : \(companyTitle)"
        label7.text = "Landline No. : \(landlineNo)"
        label8.text = "Website : \(website)"
    }
    
}
