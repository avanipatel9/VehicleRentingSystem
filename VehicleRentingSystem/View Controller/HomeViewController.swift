//
//  HomeViewController.swift
//  VehicleRentingSystem
//
//  Created by Avani Patel on 3/21/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var menuVC : MenuViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuVC = (self.storyboard?.instantiateViewController(identifier: "MenuViewController"))! as MenuViewController
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToGesture))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    
    @objc func respondToGesture(gesture : UISwipeGestureRecognizer)
    {
        switch gesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            print("Right Swipe")
            //show menu
            showMenu()
        case UISwipeGestureRecognizer.Direction.left:
            print("Left Swipe")
            //close menu
            colseOnSwipe()
        default:
            break
        }
    }
    
    @IBAction func menuAction(_ sender: UIBarButtonItem) {
        
        if AppDelegate.menuBoolean
        {
            //show menu
            showMenu()
        }
        else
        {
            //close menu
            closeMenu()
        }
        
    }
    
    func colseOnSwipe()
    {
        if AppDelegate.menuBoolean
        {
            //show menu
            //showMenu()
        }
        else
        {
            //close menu
            closeMenu()
        }
    }
    
    func showMenu()
    {
        UIView.animate(withDuration: 0.3) { () -> Void in
            
            self.menuVC.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
            self.addChild(self.menuVC)
            self.view.addSubview(self.menuVC.view)
            AppDelegate.menuBoolean = false
        }
        
    }
    func closeMenu()
    {
        UIView.animate(withDuration: 0.3, animations: {
            () -> Void in
            self.menuVC.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menuVC.view.removeFromSuperview()
        }
        
        AppDelegate.menuBoolean = true
    }

}
