//
//  Accupgrade.swift
//  propertyApp
//
//  Created by Jeevan on 22/01/17.
//  Copyright © 2017 Jeevan. All rights reserved.
//

import UIKit




class Accupgrade: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    func numberOfSectionsInTableView(_tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return (self.keys?.count)!+1
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if (indexPath.row == 5)  {
            
            return 100 ;
        }
        return 50
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if (indexPath.row != 5)  {
            
            var cell:TableViewCell  = (self.upgradeTab.dequeueReusableCell(withIdentifier: "cell")! as! TableViewCell)
            var nib = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)
            cell = (nib?[0] as? TableViewCell)!
            
            if (indexPath.row > 5) {
                
                let eachKey:String =  self.keys![indexPath.row-1]
                cell.textPlace.text = eachKey
            }
                
            else {
                
                let eachKey:String =  self.keys![indexPath.row]
                cell.textPlace.text = eachKey
            }
            
            
            return cell
            
            
        }
            
        else {
            
            var cell :HorizontalCell = (self.upgradeTab.dequeueReusableCell(withIdentifier: "ImageCell")! as! HorizontalCell)
            var nib = Bundle.main.loadNibNamed("HorizontalCell", owner: self, options: nil)
            cell = (nib?[0] as? HorizontalCell)!
            
            return cell
            
        }
        
        
        
    }
    
    
    
    @IBOutlet weak var upgradeTab: UITableView!
    
    
    var infoDict = [String: String]()
    var keys:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.upgradeTab.delegate = self
        self.upgradeTab.dataSource = self
        self.title = "Fill detail for upgradation"
        
        self.upgradeTab.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.upgradeTab.register(HorizontalCell.self, forCellReuseIdentifier: "ImageCell")
        
        
        infoDict =     ["name":"Enter Name",
                        "Location":"Enter your current Location",
                        "city":"Enter your City",
                        "state":"Enter State",
                        "pin":"Enter Country-Pin code ",
                        "about":"Enter About",
                        "exp":"Enter Per year scale Experince",
                        "contact":"Enter Contact Detail",
                        "email":"Enter Email Address",
                        "phone":"Enter Phone Number",
                        "cat":"Enter Category",
                        "sub":"Enter Sub-Category"]
        
        self.keys = ["Enter Name",
                     "Enter your current Location",
                     "Enter your City",
                     "Enter State",
                     "Enter Country-Pin code ",
                     "Enter About",
                     "Enter Per year scale Experince",
                     "Enter Contact Detail",
                     "Enter Email Address",
                     "Enter Phone Number",
                     "Enter Category",
                     "Enter Sub-Category"]
        
        
        // self.keys = Array(infoDict.values)
        //infoDict?.keys
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(_ sender: Any) {
        
        /*  var alert:UIAlertController = UIAlertController(title: "Confirmation", message: "By submitting the details you are agreed to on terms of terms of condition", preferredStyle:.alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil),
         
         alert.present(alert, animated: true, completion: nil),*/
        
        
        
        
    }
    
    
    
}

