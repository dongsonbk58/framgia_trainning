//
//  CustomTableViewController.swift
//  Lession5
//
//  Created by Nguyen Dong Son on 3/21/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController {

    var mang: [(String,String)]!
    @IBOutlet weak var tableviewmidle: UITableView!
    @IBAction func btedit(_ sender: UIBarButtonItem) {
         self.tableviewmidle.isEditing = !self.tableviewmidle.isEditing
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewmidle.dataSource=self
        tableviewmidle.delegate=self
        mang = [("iphone","a"),("asus","b"),("lg","c"),
                ("samsung","d")]
        self.tableviewmidle.isEditing=false
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension CustomTableViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mang.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section" + String(section)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mh2 = sb.instantiateViewController(withIdentifier: "mh2") as! DetailViewController
        mh2.a=(mang[indexPath.row])
        self.navigationController?.pushViewController(mh2, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        return .none
//    }
//    
//    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
//        return false
//    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let itemToMove = mang[sourceIndexPath.row]
        mang.remove(at: sourceIndexPath.row)
        mang.insert(itemToMove, at: destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let share = UITableViewRowAction(style: .normal, title: "Share") { action, index in
            print("share button tapped")
        }
        let delete = UITableViewRowAction(style: .normal, title: "delete") { action, index in
            self.mang.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
        delete.backgroundColor = UIColor.orange
        share.backgroundColor = UIColor.red
        
        return [delete,share]

    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        cell.labelcustom.text = mang[indexPath.row].0
        cell.imagecustom.image = UIImage(named: mang[indexPath.row].1)
        return cell
    }
    
    
}
