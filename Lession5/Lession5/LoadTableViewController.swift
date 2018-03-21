//
//  LoadTableViewController.swift
//  Lession5
//
//  Created by Nguyen Dong Son on 3/21/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class LoadTableViewController: UIViewController {
    @IBOutlet weak var tbload: UITableView!
    var mang:[String]!
    let refreshControl = UIRefreshControl()
    var itemsPerBatch = 10
    var reachedEndOfItems = false

    override func viewDidLoad() {
        super.viewDidLoad()
        tbload.delegate=self
        tbload.dataSource=self
        mang = ["iphone","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo","asus","lg","samsung","huawei","oppo"]
        
        if #available(iOS 10.0, *) {
            tbload.refreshControl = refreshControl
        } else {
            tbload.addSubview(refreshControl)
        }
        
        refreshControl.addTarget(self, action: #selector(refreshData(_:)), for: .valueChanged)
        refreshControl.tintColor = UIColor(red:0.25, green:0.72, blue:0.85, alpha:1.0)
        refreshControl.attributedTitle = NSAttributedString(string: "please wait")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func refreshData(_ sender: Any){
        self.tbload.reloadData()
        self.refreshControl.endRefreshing()
    }
    
    func loadMore(){
        if itemsPerBatch < mang.count-10 {
            itemsPerBatch+=10
            self.tbload.reloadData()
        }else{
            let i = mang.count - itemsPerBatch
            itemsPerBatch+=i
            self.tbload.reloadData()
        }
        
    }
    

}

extension LoadTableViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsPerBatch
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section" + String(section)
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = mang[indexPath.row]
        
        if indexPath.row == itemsPerBatch - 1 {
            self.loadMore()
        }
        return cell!
    }
    
    
}
