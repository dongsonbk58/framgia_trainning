//
//  Next2ViewController.swift
//  NavigationController
//
//  Created by Nguyen Dong Son on 3/19/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class Next2ViewController: UIViewController {
    
    @IBAction func btback(_ sender: Any) {
        passDataBackwards()
    }
    @IBOutlet weak var lbb: UILabel!
    weak var delegate: DelegatePassingData?
    var abc: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        lbb.text = abc
    }
    
    func passDataBackwards() {
        let b = "framgia training"
        delegate?.doSomething(with: b )
        self.navigationController?.popViewController(animated: true)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
