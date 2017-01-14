//
//  LeaseAgreementViewController.swift
//  SmartRentalAgreement
//
//  Created by thomas minshull on 2017-01-14.
//  Copyright © 2017 SmartRentalAgreement. All rights reserved.
//

import UIKit

class LeaseAgreementViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let pdf = Bundle.main.url(forResource: "rtb1", withExtension: "pdf") {
            let request = URLRequest(url: pdf)
            webView.loadRequest(request as URLRequest)
            webView.setNeedsDisplay()
        }
      
        
    }



}
