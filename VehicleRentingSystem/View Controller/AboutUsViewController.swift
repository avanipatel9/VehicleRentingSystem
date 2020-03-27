//
//  AboutUsViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/21/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "About Us"
        self.label.text = "We are a global online vehicle hire service founded in 2012. We cooperate with more than 500 partners, including the largest and top-quality vehicle hire companies such as Alamo, Enterprise, Sixt, Hertz, Avis, Budget, Europcar, Buchbinder and many more. With our help, you can find just the vehicle you need. We serve over 500.000 happy customers a year in more than 140 countries and 14.000 locations."
        label.numberOfLines = 15
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
