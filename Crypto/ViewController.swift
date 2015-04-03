//
//  ViewController.swift
//  Crypto
//
//  Created by Kaitlyn Katz on 3/29/15.
//  Copyright (c) 2015 KTKO Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logoImage.image = UIImage(named: "ende")
        
        self.tabBarItem.selectedImage = UIImage(named: "endeTabBar")
        self.tabBarItem.image = UIImage(named: "endeTabBar")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}