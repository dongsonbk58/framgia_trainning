//
//  Next1ViewController.swift
//  NavigationController
//
//  Created by Nguyen Dong Son on 3/19/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class Next1ViewController: UIViewController {
    var onCompletion: ((_ data: String) -> ())?
    let a: String = "son"

    @IBAction func backToView(_ sender: Any) {
        let manhinh = self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(manhinh!, animated: true)
        
    }
    @IBAction func backToPrevious(_ sender: Any) {
        onCompletion?(a)
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func backToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
