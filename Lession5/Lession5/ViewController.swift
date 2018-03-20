//
//  ViewController.swift
//  Lession5
//
//  Created by Nguyen Dong Son on 3/20/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mang:[String]!
    var mang2:[String]!
    
    @IBOutlet weak var tablebasic: UITableView!
    @IBOutlet weak var tablebasic1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tablebasic.delegate=self
        tablebasic.dataSource=self
        tablebasic1.delegate=self
        tablebasic1.dataSource=self
        mang = ["iphone","asus","lg","samsung","huawei","oppo"]
        mang2 = ["a","b","c"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag==0{
            return mang.count
        }
        
        if tableView.tag==1{
            return mang2.count
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section" + String(section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if tableView.tag==0{
            cell?.textLabel?.text = mang[indexPath.row]
        }
        
        if tableView.tag==1{
            cell?.textLabel?.text = mang2[indexPath.row]
        }
        
        return cell!
    }
    
    
}
