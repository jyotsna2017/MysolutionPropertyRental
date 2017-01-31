//
//  SearchItemDetailVC.swift
//  PropertyRental
//
//  Created by My Solutions 4 U on 1/17/17.
//  Copyright © 2017 My Solutions 4 U. All rights reserved.
//

import UIKit

class SearchItemDetailVC: UIViewController {
    
    
    
    
    @IBOutlet weak var menuButton: UIButton!
    
    
       

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if revealViewController() != nil {
            
            
            revealViewController().rearViewRevealWidth = 100
          //  self.menuButton.target  =  revealViewController()
           // self.menuButton.action  =  "revealToggle:"
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }

        
        
        
        

        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
