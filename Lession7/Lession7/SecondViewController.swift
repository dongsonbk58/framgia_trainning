//
//  SecondViewController.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/23/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var lbsvc: UILabel!
    let key="viewtosecond"

    @IBAction func btpostnofification(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: key), object: key)
        // `default` is now a property, not a method call
        lbsvc.text = "Notification Completed"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doThisWhenNotify),
                                               name: NSNotification.Name(rawValue: key),
                                               object: nil)
    }
    
    func doThisWhenNotify() { print("sent msg") }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
