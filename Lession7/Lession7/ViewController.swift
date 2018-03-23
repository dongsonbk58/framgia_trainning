//
//  ViewController.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/23/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbvc1: UILabel!
    let key="viewtosecond"

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(catchNotification),
                                               name: NSNotification.Name(rawValue: key),
                                               object: nil)
    }
    
    func catchNotification(notification: NSNotification){
        if let string = notification.object as? String {
            lbvc1.text = string
        }
    }


    func doSomethingAfterNotified() {
        print("I've been notified")
        lbvc1.text = "ok ok"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

