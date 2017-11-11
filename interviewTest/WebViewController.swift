//
//  WebViewController.swift
//  interviewTest
//
//  Created by Colin Walsh on 11/10/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit
import Foundation


class WebViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        webView.delegate = self
        print("webview loaded")
        url = URL(string: MenuListItems[currentIndex].url)
        
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    

    
    

}
