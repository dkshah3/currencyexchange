//
//  ViewController.swift
//  currencyExchange
//
//  Created by Dhrumil Shah on 2017-07-05.
//  Copyright © 2017 Dhrumil Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var dollarAmount: UITextField!

    @IBOutlet weak var euroAmount: UITextField!
 
    @IBAction func convert(_ sender: Any) {
        
        if let dollar = Double(dollarAmount.text!) {
            
            let euro = dollar * 0.88
            
        euroAmount.text = String(format: "%.2f", euro)
        
    }
    else {
    
        euroAmount.text = ""
        dollarAmount.text = ""
    }
}

}
