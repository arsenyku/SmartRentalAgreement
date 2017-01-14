//
//  SmartRentClient.swift
//  SmartRentalAgreement
//
//  Created by asu on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import Foundation

class SmartRentClient
{
  static var propertyData:[String:Any]? = nil
  static var contractData:[String:Any]? = nil
  static var paymentData:[String:Any]? = nil
  static var terminateData:[String:Any]? = nil
  
  func requestHistory(forProperty:String, completion: @escaping (Dictionary<String,Any>) -> Void) -> Void
  {
    let _ = URLSession.download(fromAddress: "http://10.10.42.198:3000/property_history", completionHandler: { (data, response, error) -> Void in

      guard let json = try? JSONSerialization.jsonObject(with: data!, options: []),
        let jsonDictionary = json as? [String:Any] else {
        return
      }
      
      SmartRentClient.propertyData = jsonDictionary

      completion(jsonDictionary)
      
    })
  }

  
  func requestPaymentData(forProperty:String, completion: @escaping (Dictionary<String,Any>) -> Void) -> Void
  {
    let _ = URLSession.download(fromAddress: "http://10.10.42.198:3000/payment", completionHandler: { (data, response, error) -> Void in
      
      guard let json = try? JSONSerialization.jsonObject(with: data!, options: []),
        let jsonDictionary = json as? [String:Any] else {
          return
      }
      
      SmartRentClient.paymentData = jsonDictionary
      
      completion(jsonDictionary)
    })
  }
  func requestContractData(forProperty:String, completion: @escaping (Dictionary<String,Any>) -> Void) -> Void
  {
    let _ = URLSession.download(fromAddress: "http://10.10.42.198:3000/contract", completionHandler: { (data, response, error) -> Void in
      
      guard let json = try? JSONSerialization.jsonObject(with: data!, options: []),
        let jsonDictionary = json as? [String:Any] else {
          return
      }
      
      SmartRentClient.contractData = jsonDictionary
      
      completion(jsonDictionary)
    })
  }
  func requestTerminateData(forProperty:String, completion: @escaping (Dictionary<String,Any>) -> Void) -> Void
  {
    let _ = URLSession.download(fromAddress: "http://10.10.42.198:3000/terminate", completionHandler: { (data, response, error) -> Void in
      
      guard let json = try? JSONSerialization.jsonObject(with: data!, options: []),
        let jsonDictionary = json as? [String:Any] else {
          return
      }
      
      SmartRentClient.terminateData = jsonDictionary
      
      completion(jsonDictionary)
    })
  }

  
  
}
