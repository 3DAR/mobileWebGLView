//
//  ViewController.swift
//  mobileWebGLView
//
//  Created by Gursimran Singh on 8/5/14.
//  Copyright (c) 2014 3DAR. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var containerView : UIView = nil
    
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView()
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = NSURL(string:"http://google.com")
        var req = NSURLRequest(URL:url)
        self.webView!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

