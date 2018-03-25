//
//  SqliteViewController.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/25/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class SqliteViewController: UIViewController {
    @IBOutlet weak var tbsqlite: UITableView!
    var todoItems: [TodoItem] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbsqlite.delegate=self
        tbsqlite.dataSource=self
        todoItems=DBHelped.shared.getlistdata()
        print(todoItems.count)
        refreshList()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func refreshList() {
        tbsqlite.reloadData()
    }
    
}


extension SqliteViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    override func viewWillAppear(_ animated: Bool) {
        refreshList()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let todoitem = todoItems[(indexPath as NSIndexPath).row] as TodoItem
        cell.textLabel?.text = todoitem.title as String!
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true // all cells are editable
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete { // the only editing style we'll support
            // delete the row from the data source
        }
    }
    
}
