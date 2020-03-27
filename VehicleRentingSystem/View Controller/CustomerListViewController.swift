//
//  CustomerListViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/22/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController {

    @IBOutlet weak var tblCustomers: UITableView!
    var customers : [Customer] = []
    var totalBillToPay = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.hidesBackButton = true
        self.addNewCustomerButton()
        self.navigationItem.title = "Customer List"
        customers = DataStorage.getInstance().getAllCustomers()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        customers = DataStorage.getInstance().getAllCustomers()
        tblCustomers.reloadData()
    }
    
    private func addNewCustomerButton()
    {
        let newCustomerButton = UIBarButtonItem(title: "Add Customer", style: .plain, target: self, action: #selector(self.addNewCustomer))
        self.navigationItem.rightBarButtonItem = newCustomerButton
    }
    @objc func addNewCustomer()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addNewCustomerVC = sb.instantiateViewController(identifier: "AddNewCustomerViewController") as! AddNewCustomerViewController
        navigationController?.pushViewController(addNewCustomerVC, animated: true)
    }
}

extension CustomerListViewController:UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerTableViewCell") as! CustomerTableViewCell
        let customer = customers[indexPath.row]
        cell.lblCustomerName.text = "Name : \(customer.fullName)"
        cell.lblTotalBill.text = "Total Bill : $ \(customer.getTotalBill())"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // shows the selected customers details in ShowBillDetailsViewController
            let customers = DataStorage.getInstance().getAllCustomers()
            let selectedCustomer = customers[indexPath.row]
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let custDetailsVC = sb.instantiateViewController(identifier: "CustomerDetailsViewController") as CustomerDetailsViewController
            let vehicleDetailsVC = sb.instantiateViewController(identifier: "RentedVehicleListViewController") as RentedVehicleListViewController
            custDetailsVC.customer = selectedCustomer
            vehicleDetailsVC.customer = selectedCustomer
            
            self.navigationController?.pushViewController(custDetailsVC, animated: true)
            
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
    

