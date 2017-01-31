//
//  ViewController.swift
//  PropertyRental
//
//  Created by My Solutions 4 U on 1/13/17.
//  Copyright © 2017 My Solutions 4 U. All rights reserved.
//

import UIKit

class ViewController:  UIViewController  {
    
    
    
    @IBOutlet weak var RecommentField: UITextView!
    
    
    @IBOutlet weak var HomeTBL: UITableView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
                 self.view.backgroundColor = UIColor.white

        
        
                 self.navigationItem.setHidesBackButton(true, animated: false)
                
                if revealViewController() != nil {
                       revealViewController().rearViewRevealWidth = 162
                       menuButton.target = revealViewController()
                        menuButton.action = "revealToggle:"
                                 
                     view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        }
        
            
            
        }
    
    
    
      
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    


}

