//
//  homeViewController.swift
//  Regtransfers
//
//  Created by Craig Weston on 09/03/2016.
//  Copyright © 2016 Craig Weston. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class homeViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var phoneItem: UIBarButtonItem!
    @IBOutlet var websiteActivity: UIActivityIndicatorView!
    @IBOutlet var homeTitle: UINavigationItem!
    @IBOutlet var homeWebView: WKWebView!

    
    @IBAction func callUs(sender: AnyObject) {
        let phone = "tel://01582967777"
        let phoneURL:NSURL = NSURL(string: phone)!
        UIApplication.sharedApplication().openURL(phoneURL)
        
    }

    @IBAction func reloadPage(sender: AnyObject) {
        homeWebView.reloadFromOrigin()
        
    }
    override func loadView() {
        homeWebView = WKWebView()
        homeWebView.navigationDelegate = self
        view = homeWebView
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        let url = NSURL(string: "https://www.regtransfers.co.uk/mobile/ios-app/app-home.html")
        
        homeWebView.loadRequest(NSURLRequest(URL: url!))
        homeWebView.allowsBackForwardNavigationGestures = true
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Default
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 9.0/255.0, green: 59.0/255.0, blue: 138.0/255.0, alpha: 0.9)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        UITabBar.appearance().barTintColor = UIColor.whiteColor()
        
        
        let imageView = UIImageView(frame: CGRect(x: -30, y: 0, width: 35, height: 35))
        imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "LOGO")
        imageView.image = image
        
        homeTitle.titleView = imageView
        
        let attributes = [NSFontAttributeName: UIFont.fontAwesomeOfSize(20)] as Dictionary!
        phoneItem.setTitleTextAttributes(attributes, forState: .Normal)
        phoneItem.title = String.fontAwesomeIconWithName(.Phone)
    
        UIApplication.sharedApplication().statusBarStyle = .LightContent

    }
    
    func webViewDidFinishLoad(homeWebView: WKWebView) {
        websiteActivity.hidden = true
  }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

