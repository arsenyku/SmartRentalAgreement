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
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
}
