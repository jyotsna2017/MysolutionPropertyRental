//
//  upgradePlanListVc.swift
//  propertyApp
//
//  Created by My Solutions 4 U on 1/27/17.
//  Copyright © 2017 Jeevan. All rights reserved.
//

import UIKit

class upgradePlanListVc: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var planTb: UITableView!
    var palnArra = [ "PLAN!","PLAN2","PLAN3"]
    
    
    
    
    
    func numberOfSectionsInTableView(_tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 3
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        var cell: customcell  = (self.planTb.dequeueReusableCell(withIdentifier: "plancell")! as! customcell)
        cell.paln1Field.text  =  self.palnArra[indexPath.row]
       // cell.plan2Field.text  = "PlAN2"
       // cell.paln3Field.text  = "plAN3"
        
        
    
        
        
    
        
        
       
        
        
        return cell
    }


    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.planTb.delegate = self
        
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
