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
    
    @IBOutlet var outerView: UIView!
    
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView()
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // this is how you load a pre packaged html file
        //var path = NSBundle.mainBundle().pathForResource("index", ofType: "html")
        
        var url = NSURL(string: "https://www.cubeslam.com/tsgwok")
        var req = NSURLRequest(URL:url)
        self.webView!.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

