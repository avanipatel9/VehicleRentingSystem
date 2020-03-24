//
//  OwnerListViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/22/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class OwnerListViewController: UIViewController {

    @IBOutlet weak var tblOwners: UITableView!
    var owners : [Owner] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Owner List"
        addNewOwnerButton()
        owners = DataStorage.getInstance().getAllOwners()
    }
    
    override func viewWillAppear(_ animated: Bool) {
         owners = DataStorage.getInstance().getAllOwners()
        tblOwners.reloadData()
    }
    
    private func addNewOwnerButton()
    {
        let newOwnerButton = UIBarButtonItem(title: "Add Owner", style: .plain, target: self, action: #selector(self.addNewOwner))
        self.navigationItem.rightBarButtonItem = newOwnerButton
    }
    @objc func addNewOwner()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addNewOwnerVC = sb.instantiateViewController(identifier: "AddNewOwnerViewController") as! AddNewOwnerViewController
        navigationController?.pushViewController(addNewOwnerVC, animated: true)
    }
    
}

extension OwnerListViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return owners.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OwnerTableViewCell") as! OwnerTableViewCell
        let owner = owners[indexPath.row]
        cell.lblOwnerName.text = owner.fullName
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
