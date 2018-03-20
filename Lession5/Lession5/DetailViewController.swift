//
//  DetailViewController.swift
//  Lession5
//
//  Created by Nguyen Dong Son on 3/21/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lbname: UILabel!
    @IBOutlet weak var imgdisplay: UIImageView!
    var a:(String,String)?

    override func viewDidLoad() {
        super.viewDidLoad()
        lbname.text=(a?.0)!
        imgdisplay.image=UIImage(named: (a?.1)!)

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
