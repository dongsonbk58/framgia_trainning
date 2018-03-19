//
//  NextViewController.swift
//  NavigationController
//
//  Created by Nguyen Dong Son on 3/19/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var lbDisplayFromOther: UILabel!
    var string: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbDisplayFromOther.text=string

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? Next1ViewController else { return }
        destination.onCompletion = { [weak self] (data) in
            
            self?.lbDisplayFromOther.text=data

        }
 
    }

}
