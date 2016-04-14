//
//  searchViewController.swift
//  Regtransfers
//
//  Created by Craig Weston on 08/03/2016.
//  Copyright © 2016 Craig Weston. All rights reserved.
//

import UIKit
import WebKit

class searchViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var phone: UIBarButtonItem!
    @IBOutlet var searchWebView: WKWebView!
    
    @IBOutlet var searchTitle: UINavigationItem!
    
    @IBAction func callUs(sender: AnyObject) {
        let phone = "tel://01582967777"
        let phoneURL:NSURL = NSURL(string: phone)!
        UIApplication.sharedApplication().openURL(phoneURL)
        
    }
    
    override func loadView() {
        searchWebView = WKWebView()
        searchWebView.navigationDelegate = self
        view = searchWebView
    }
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://www.regtransfers.co.uk/mobile/ios-app/app-search.asp")
        searchWebView.loadRequest(NSURLRequest(URL: url!))
        searchWebView.allowsBackForwardNavigationGestures = true
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 9.0/255.0, green: 59.0/255.0, blue: 138.0/255.0, alpha: 0.9)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        UITabBar.appearance().barTintColor = UIColor.whiteColor()
        
        

        let imageView = UIImageView(frame: CGRect(x: -30, y: 0, width: 35, height: 35))
        imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "LOGO")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(20)] as Dictionary!
        phone.setTitleTextAttributes(attributes, forState: .Normal)
        phone.title = String.fontAwesomeIconWithName(.Phone)
        
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
