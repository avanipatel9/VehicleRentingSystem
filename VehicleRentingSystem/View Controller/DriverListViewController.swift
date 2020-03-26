//
//  DriverListViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/25/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class DriverListViewController: UIViewController {

    @IBOutlet weak var tblDrivers: UITableView!
    var drivers:[Driver] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Driver List"
        addNewDriverButton()
        drivers = DataStorage.getInstance().getAllDrivers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        drivers = DataStorage.getInstance().getAllDrivers()
        tblDrivers.reloadData()
    }
    
    private func addNewDriverButton()
    {
        let newDriverButton = UIBarButtonItem(title: "Add Driver", style: .plain, target: self, action: #selector(self.addNewDriver))
        self.navigationItem.rightBarButtonItem = newDriverButton
    }
    @objc func addNewDriver()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addNewDriverVC = sb.instantiateViewController(identifier: "AddNewDriverViewController") as! AddNewDriverViewController
        navigationController?.pushViewController(addNewDriverVC, animated: true)
    }

}

extension DriverListViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DriverTableViewCell") as! DriverTableViewCell
        let driver = drivers[indexPath.row]
        cell.lblDriverName.text = driver.fullName
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
