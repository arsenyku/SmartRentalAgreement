//
//  PropertyHistoryViewController.swift
//  SmartRentalAgreement
//
//  Created by thomas minshull on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import UIKit

class PropertyHistoryViewController: UIViewController, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
//  let presentableData = [String:[String:String]]
  
    override func viewDidLoad() {
      super.viewDidLoad()
  
      self.tableView.dataSource = self
      self.tableView.reloadData()
      
    }

  
//      ["duration_of_lease":"0","tenant" = "Sarah Foot"]
//      ["duration_of_lease":"4","tenant" = "Lisa Simpson"]
//      ["duration_of_lease":"4","tenant" = "Joe Schmoe"]
//      
//      req1 =         {
//        issue = "snow removal";
//        resolved = 1;
//        "response_time" = 1;
//      };
//      req2 =         {
//        issue = "snow removal";
//        resolved = 1;
//        "response_time" = 2;
//      };
//      
//      ["property3": ]
//      
//      
//      "requisitions =     {
//        };
//;
//        }, "property2": {
//          "duration_of_lease" = 12;
//          requisitions =     {
//            req1 =         {
//              issue = "snow removal";
//              resolved = 1;
//              "response_time" = 1;
//            };
//            req2 =         {
//              issue = "snow removal";
//              resolved = 1;
//              "response_time" = 2;
//            };
//          };
//          tenant = "Lisa Simpson";
//        }, "property1": {
//          "duration_of_lease" = 4;
//          requisitions =     {
//            req1 =         {
//              issue = plumbing;
//              resolved = 1;
//              "response_time" = 5;
//            };
//            req2 =         {
//              issue = roaches;
//              resolved = 0;
//              "response_time" = 100;
//            };
//            req3 =         {
//              issue = nachos;
//              resolved = 1;
//              "response_time" = 1;
//            };
//          };
//          tenant = "Joe Schmoe";
//        }]

    override func viewWillAppear(_ animated: Bool) {
      print ("will appear")
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  // MARK: Table View Data Source
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let rows = SmartRentClient.propertyData?.count
      else { return 0 }
    return rows
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell") as? HistoryCell,
      let propertyData = SmartRentClient.propertyData as? [String:[String:Any]]
    else
    {
      return HistoryCell()
    }
    
    print ("===================")
    print (propertyData)
    print ("-------------------")
    
    let propertyName = Array(propertyData.keys)[indexPath.row]
    guard let propertyDetails = propertyData[propertyName],
      let tenant = propertyDetails["tenant"] as? String,
      let duration = propertyDetails["duration_of_lease"] as? Int
      else { return HistoryCell() }
    
    cell.propertyName.text = "Property: \(propertyName)"
    cell.tenant.text = "Tenant: \(tenant)"
    cell.leaseDuration.text = "Lease Duration: \(duration)"

    cell.req1.text = "Snow Removal - 5 days (Resolved)"
    cell.req2.text = "Plumbing Fix - 1 day (Unresolved)"
    
    return cell
  }
  
}
