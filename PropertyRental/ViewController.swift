//
//  ViewController.swift
//  PropertyRental
//
//  Created by My Solutions 4 U on 1/13/17.
//  Copyright © 2017 My Solutions 4 U. All rights reserved.
//

import UIKit

class ViewController:  UIViewController ,UITableViewDelegate,UITableViewDataSource,UITextViewDelegate  {
    
    
    
    @IBOutlet weak var textField: UITextView!
    
    
    @IBOutlet weak var HomeTBL: UITableView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    let headerTitles = ["Recommended ", "Near you", "Advertisement "]
    
   // let headerTitles = ["Recommended", "Advertisement"]
    let data = [["back", "kid2", "fastFF"], ["back", "Kid2", "fastFF"]]
    let sectionTitles: [String] = ["Section 1", "Section 2", "Section 3"]
    

    
    
    
    
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        
        return headerTitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
           return data.count
           }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerTitles[section]
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    
    
     func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! CustomHeaderCell
      //  headerCell.backgroundColor = UIColor.cyan
        
       /* switch (section) {
        case 0:
            headerCell.headerLabe.text = "Recommended";
        //return sectionHeaderView
        case 1:
            headerCell.headerLabe.text = "title";
        //return sectionHeaderView
        case 2:
            headerCell.headerLabe.text = "South add";
        //return sectionHeaderView
        default:
            headerCell.headerLabe.text = "Other";
         
         
        }*/
        
        headerCell.headerLabe.text = headerTitles[section]
       

        return headerCell
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        
        cell!.textLabel?.text = data[indexPath.section][indexPath.row]
        
        
        
    
        
        
        
        
               if indexPath.row == 0 {
            
            
           // let cell: WhatsOnMoving  = (self.HomeTBL.dequeueReusableCell(withIdentifier: "MovingCell")! as! WhatsOnMoving)

            let cell = tableView.dequeueReusableCell(withIdentifier: "MovingCell", for: indexPath as IndexPath) as! WhatsOnMoving
           
            return cell
        }
               else { indexPath.row == 1
              let cell :NearYouCell = self.HomeTBL.dequeueReusableCell(withIdentifier: "NearyouCell", for: indexPath as IndexPath) as! NearYouCell
            
            
                return cell
            
            
            
                 
            
            
        
              }
      /*  else{
            
            
               let cell :CustImageCell = self.HomeTBL.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath as IndexPath) as! CustImageCell
            
                  return cell
            
            
        }*/
        
        
       
        
        
        
      return cell!
        
    
    }
    
    
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
        
                      self.HomeTBL.delegate = self
                      self.HomeTBL.dataSource = self
                      self.textField.delegate = self
        
        
        }
    
    //Delegate method for text view
    
     public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
        
          post()
        
          return true
    }
    
    func post(){
        
        
          var posrStr:String = ""
        
          posrStr = self.textField.text
        
        
        
        
    }
    
    

    
    
    
    
      
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
    


}

