//
//  ViewController.swift
//  CinetPay
//
//  Created by Ismael Toé on 23/02/2019.
//  Copyright © 2019 CinetPay. All rights reserved.
//

import UIKit
import SDKCinetPay

class ViewController: UIViewController, CinetPayDelegate {

    @IBOutlet weak var amountView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pay(_ sender: Any) {
        let controller = CinetPayViewController()
        
        controller.amount = amountView.text
        controller.apiKey = "VOTRE_CLE_API"
        controller.siteId = 337214
        controller.notifyURL = ""
        controller.shouldCheckPayment = false
        let uuid = UUID().uuidString
        controller.transId = uuid
        controller.currency = "CFA"
        controller.designation = "Test de paiement"
        controller.custom = ""
        
        controller.cinetPayDelegate = self
        
        present(controller, animated: true, completion: nil)
    }
    
    func onError(code: Int, message: String) {
        print("onError")
    }
    
    func onPaymentCompleted(payment_info: String) {
        print("onPaymentCompleted")
    }
    
    func terminatePending(api_key: String, site_id: Int, trans_id: String) {
        print("terminatePending")
    }
    
    func terminateSuccess(payment_info: String) {
        print("terminateSuccess")
    }
    
    func terminateFailed(api_key: String, site_id: Int, trans_id: String) {
        print("terminateFailed")
    }
    
    func checkPayment(api_key: String, site_id: Int, trans_id: String) {
        print("checkPayment")
    }
}

