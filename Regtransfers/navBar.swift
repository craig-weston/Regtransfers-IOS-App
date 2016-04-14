//
//  navBar.swift
//  Regtransfers
//
//  Created by Craig Weston on 05/04/2016.
//  Copyright © 2016 Craig Weston. All rights reserved.
//

import Foundation

import Foundation
import UIKit
import WebKit

class navBar: UINavigationController {
    
    @IBAction func callUs(sender: AnyObject) {
        let phone = "tel://01582967777"
        let phoneURL:NSURL = NSURL(string: phone)!
        UIApplication.sharedApplication().openURL(phoneURL)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        let imageView = UIImageView(frame: CGRect(x: -30, y: 0, width: 35, height: 35))
        imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "LOGO")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
        navigationController?.navigationBar.barTintColor = UIColor.blueColor()
        
        
       
        
    }

        
}