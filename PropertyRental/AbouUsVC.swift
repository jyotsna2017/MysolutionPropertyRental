//
//  AbouUsVC.swift
//  PropertyRental
//
//  Created by My Solutions 4 U on 2/2/17.
//  Copyright © 2017 My Solutions 4 U. All rights reserved.
//

import UIKit

class AbouUsVC: UIViewController,UIWebViewDelegate {
    
    

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         self.webview.delegate = self
               // Do any additional setup after loading the view.
        let url = URL(string: "http://apple.com")
        let request = URLRequest(url: url!)
        self.webview.loadRequest(request)
        

    }
    
    
    @IBAction func goTo(_ sender: Any) {
        
        
        
        
            
            
        }
        
        
        
        func webView(webView: UIWebView!, didFailLoadWithError error: NSError!) {
            print("Webview fail with error \(error)")
        }
        
        
        
        func webViewDidStartLoad(webView: UIWebView!) {
            print("Webview started Loading")
        }
        
        func webViewDidFinishLoad(webView: UIWebView!) {
            print("Webview did finish load")
        }
        

        
        
        
        
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
