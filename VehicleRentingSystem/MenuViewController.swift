//
//  MenuViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/21/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let menuTitlesArray = ["Home", "Contact Us", "About Us", "Logout"]
    
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
        case "Contact Us":
            let contactUSVC = sb.instantiateViewController(identifier: "ContactUsViewController") as ContactUsViewController
            self.navigationController?.pushViewController(contactUSVC, animated: true)
        default:
            break
        }
    }
    
}
