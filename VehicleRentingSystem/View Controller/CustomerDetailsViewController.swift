//
//  CustomerDetailsViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/26/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {

    var customer : Customer?
    @IBOutlet weak var lblCustomerFullName: UILabel!
    @IBOutlet weak var lblCustomerGender: UILabel!
    @IBOutlet weak var lblCustomerMobileNo: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCustomerAge: UILabel!
    @IBOutlet weak var lblCustomerEmail: UILabel!
    @IBOutlet weak var lblCustomerCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Customer Details"
        displaySelectedCustomerDetails()
        
    }
    

    @IBAction func btnViewRentedVehiclesClick(_ sender: UIButton)
    {
        if customer?.vehicleListRented.count == 0
        {
            showAlert(message: "This Customer has not rented any vehicles")
        }
        else
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
                   let vehicleDetailsVC = sb.instantiateViewController(identifier: "RentedVehicleListViewController") as! RentedVehicleListViewController
                   vehicleDetailsVC.customer = self.customer
                   navigationController?.pushViewController(vehicleDetailsVC, animated: true)
        }
    }
    
    func showAlert(message: String)
       {
           let alert = UIAlertController(title: "Error", message:message, preferredStyle: .alert)
           let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
           alert.addAction(okButton)
           self.present(alert, animated: true)
       }
    
    func displaySelectedCustomerDetails()
    {
        guard let customerFullName = self.customer?.fullName else {
            return
        }
        guard let customerGender = self.customer?.gender else {
            return
        }
        guard  let customerMobile = self.customer?.mobileNumber else {
            return
        }
        guard let customerAge = self.customer?.age else {
            return
        }
        guard let customerEmail = self.customer?.emailID else {
            return
        }
        guard let customerAddress = self.customer?.address else {
            return
        }
        guard let CustomerCity = self.customer?.city else {
            return
        }
        
        lblCustomerFullName.text = "Name : \(customerFullName)"
        lblCustomerGender.text = "Gender : \(customerGender)"
        lblCustomerAge.text = "Age : \(customerAge)"
        lblCustomerMobileNo.text = "Mobile No. : \(customerMobile)"
        lblCustomerEmail.text = "Email ID : \(customerEmail)"
        lblAddress.text = "Address : \(customerAddress)"
        lblCustomerCity.text = "City : \(CustomerCity)"
        
    }
    
}
