//
//  SelectionViewController.swift
//  SmartRentalAgreement
//
//  Created by asu on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import UIKit

class SelectionViewController:UIViewController
{
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let client = SmartRentClient()
    client.requestHistory(forProperty: "123SesameSt") { (data) in
      print (data)
    }
  }
  
}