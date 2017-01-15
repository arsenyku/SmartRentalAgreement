//
//  PaymentViewController.swift
//  SmartRentalAgreement
//
//  Created by thomas minshull on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet weak var currentBalanceLabel: UILabel!
    @IBOutlet weak var amountDueLabel: UILabel!
    @IBOutlet weak var NextPaymentDueLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(SmartRentClient.paymentData!)
        
        let balance = SmartRentClient.paymentData?["balance"]
        let payment = SmartRentClient.paymentData?["payment"]
        let contract = SmartRentClient.paymentData?["contract"] as! [String:Any]
        let nextDueDate = contract["payment_day"]!
        
        currentBalanceLabel.text = "\(balance!)"
        amountDueLabel.text = "\(payment!)"
        NextPaymentDueLabel.text = "\(nextDueDate) of next month"
        
    }

    @IBAction func submitPaymentTapped(_ sender: Any) {
//        let urlBaseString = "10.10.42.198:3000/make_payment"
//        let amountString = "?amount="
//        let url = "\(urlBaseString)\(textField.text)"
//        
//        var urlComponents = NSURLComponents(string: "10.10.42.198:3000/payment")
//        urlComponents?.queryItems = [
//            NSURLQueryItem(name: "amount", value: textField.text) as URLQueryItem,
//            NSURLQueryItem(name: "id", value: "1") as URLQueryItem
//        ]
//        let url2 = urlComponents?.url
//        
//        DispatchQueue.global(qos: .background).async {
//            //var request = URLRequest(url: URL(string: urlBaseString)!)
//            var request = URLRequest(url: url2!)
//            request.httpMethod = "GET"
//            
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                print("data: \(data), response: \(response), error: \(error)")
//            }
//            task.resume()
        currentBalanceLabel.text = textField.text
        
        
        }
        
        
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
}
