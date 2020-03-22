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
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Customer List"
        customers = DataStorage.getInstance().getAllCustomers()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        customers = DataStorage.getInstance().getAllCustomers()
        tblCustomers.reloadData()
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
    

