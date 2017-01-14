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
  func requestHistory(forProperty:String, completion: @escaping (Dictionary<String,Any>) -> Void) -> Void
  {
    let _ = URLSession.download(fromAddress: "http://10.10.42.198:3000/property_history", completionHandler: { (data, response, error) -> Void in

      guard let json = try? JSONSerialization.jsonObject(with: data!, options: []),
        let jsonDictionary = json as? [String:Any] else {
        return
      }
      
      completion(jsonDictionary)
      
    })
  }

}
