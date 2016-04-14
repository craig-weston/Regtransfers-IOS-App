//
//  sellViewController.swift
//  Regtransfers
//
//  Created by Craig Weston on 08/03/2016.
//  Copyright © 2016 Craig Weston. All rights reserved.
//

import UIKit
import WebKit

class sellViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet var backBtn: UIBarButtonItem!
    
    @IBOutlet var callBtn: UIBarButtonItem!
    @IBOutlet var sellWebView: WKWebView!
    
    @IBAction func callUs(sender: AnyObject) {
        let phone = "tel://01582967777"
        let phoneURL:NSURL = NSURL(string: phone)!
        UIApplication.sharedApplication().openURL(phoneURL)
        
    }
    
    override func loadView() {
        sellWebView = WKWebView()
        sellWebView.navigationDelegate = self
        view = sellWebView
    }
    
    @IBAction func reload(sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 0
        sellWebView.reloadFromOrigin()
        
        
        let url = NSURL(string: "https://www.regtransfers.co.uk/mobile/ios-app/app-sell.asp")
        
        sellWebView.loadRequest(NSURLRequest(URL: url!))
    }
    
    @IBOutlet var sellTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageView = UIImageView(frame: CGRect(x: -30, y: 0, width: 35, height: 35))
        imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "LOGO")
        imageView.image = image
        
        sellTitle.titleView = imageView
        
        
        
        let url = NSURL(string: "https://www.regtransfers.co.uk/mobile/ios-app/app-sell.asp")
        sellWebView.loadRequest(NSURLRequest(URL: url!))
        sellWebView.allowsBackForwardNavigationGestures = true
        
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 9.0/255.0, green: 59.0/255.0, blue: 138.0/255.0, alpha: 0.9)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        UITabBar.appearance().barTintColor = UIColor.whiteColor()

        
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(20)] as Dictionary!
        callBtn.setTitleTextAttributes(attributes, forState: .Normal)
        callBtn.title = String.fontAwesomeIconWithName(.Phone)
        
        /*
        backBtn.enabled = false
        backBtn.setTitleTextAttributes(attributes, forState: .Normal)
        backBtn.title = String.fontAwesomeIconWithName(.Phone)*/

    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}