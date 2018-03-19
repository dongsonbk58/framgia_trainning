//
//  ViewController.swift
//  NavigationController
//
//  Created by Nguyen Dong Son on 3/19/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfText: UITextField!

    @IBAction func btNext(_ sender: Any) {
        
    }
    
    @IBAction func returnedFromOther(segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view1: did load")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view1: did appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view1: did disappear")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view1: will appear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view1: will disappear")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="next"{
            let destination = segue.destination as! NextViewController
            destination.string = tfText.text
        }else{
            if let destination = segue.destination as? Next2ViewController {
                destination.delegate = self
                destination.abc = tfText.text
            }
            
        }
    }

}


extension ViewController: DelegatePassingData {
    func doSomething(with data: String) {
        tfText.text = data
    }
}

