//
//  ViewController.swift
//  Lession6
//
//  Created by Nguyen Dong Son on 3/23/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbview: UITableView!
    var gitdata = [ApiGit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbview.delegate=self
        tbview.dataSource=self
        let link = URL(string: "https://api.github.com/users/google/repos")

        let task = URLSession.shared.dataTask(with: link!) { (data, response, error) in
            if error != nil{
                print("error")
            }else{
                if let mydata=data{
                    do{
                        let jsonArray = try JSONSerialization.jsonObject(with: mydata, options: JSONSerialization.ReadingOptions.mutableContainers) as! Array<AnyObject>
                        for json in jsonArray{
                            if let item = json as? [String: AnyObject] {
                                if let id = item["id"] as? Int,
                                    let git_url = item["git_url"] as? String,
                                    let full_name = item["full_name"] as? String,
                                    let description = item["description"] as? String
                                {
                                    let apiGit = ApiGit()
                                    apiGit.id = id
                                    apiGit.git_url = git_url
                                    apiGit.full_name = full_name
                                    apiGit.description = description
                                    self.gitdata.append(apiGit)
                                }
                            }
                        }
                        
                    }catch{
                        
                    }
                }
            }
            
            OperationQueue.main.addOperation {
                self.tbview.reloadData()
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text=gitdata[indexPath.row].full_name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gitdata.count
    }
}

