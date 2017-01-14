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
    client.requestHistory(forProperty: "123SesameSt", completion: {_ in print (SmartRentClient.propertyData as Any) })
    client.requestPaymentData(forProperty: "123SesameSt", completion: {_ in print (SmartRentClient.paymentData as Any) })
    client.requestContractData(forProperty: "123SesameSt", completion: {_ in print (SmartRentClient.contractData as Any) })
    client.requestTerminateData(forProperty: "123SesameSt", completion: {_ in print (SmartRentClient.terminateData as Any) })
    
  }
  
}
