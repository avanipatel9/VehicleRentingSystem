//
//  MenuViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/21/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let menuTitlesArray = ["Home", "Customers", "Owners", "Drivers", "Cars", "Buses", "Contact Us", "About Us", "Logout"]
    
    @IBOutlet weak var tblViewMenu: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblViewMenu.delegate = self
        tblViewMenu.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuTitlesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCell
        cell.lblMenuTitle.text = menuTitlesArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        switch menuTitlesArray[indexPath.row] {
        case "Home":
            let homeVC = sb.instantiateViewController(identifier: "HomeViewController") as HomeViewController
            self.navigationController?.pushViewController(homeVC, animated: true)
        case "Customers":
            let customersVC = sb.instantiateViewController(identifier: "CustomerListViewController") as CustomerListViewController
            self.navigationController?.pushViewController(customersVC, animated: true)
        case "Owners":
            let ownersVC = sb.instantiateViewController(identifier: "OwnerListViewController") as OwnerListViewController
            self.navigationController?.pushViewController(ownersVC, animated: true)
        case "Drivers":
            let driversVC = sb.instantiateViewController(identifier: "DriverListViewController") as DriverListViewController
            self.navigationController?.pushViewController(driversVC, animated: true)
        case "Cars":
            let carsVC = sb.instantiateViewController(identifier: "CarDetailsListViewController") as CarDetailsListViewController
            self.navigationController?.pushViewController(carsVC, animated: true)
        case "Buses":
            let busesVC = sb.instantiateViewController(identifier: "BusDetailsViewController") as BusDetailsViewController
            self.navigationController?.pushViewController(busesVC, animated: true)
        case "Contact Us":
            let contactUsVC = sb.instantiateViewController(identifier: "ContactUsViewController") as ContactUsViewController
            self.navigationController?.pushViewController(contactUsVC, animated: true)
        case "About Us":
            let aboutUsVC = sb.instantiateViewController(identifier: "AboutUsViewController") as AboutUsViewController
            self.navigationController?.pushViewController(aboutUsVC, animated: true)
        case "Logout":
            self.navigationController?.popToRootViewController(animated: true)
        default:
            break
        }
    }
    
}
