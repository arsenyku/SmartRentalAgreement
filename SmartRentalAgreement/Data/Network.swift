//
//  Network.swift
//  SmartRentalAgreement
//
//  Created by asu on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import Foundation


extension URLSession
{
  class func download(fromAddress address:String, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTask
  {
    
    let session = URLSession.shared
    let dataTask = session.dataTask(with: URL(string:address)!, completionHandler: completionHandler)
    
    dataTask.resume()
    return dataTask
  }
}

