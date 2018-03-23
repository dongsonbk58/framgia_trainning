//
//  ScheduleDetailViewController.swift
//  Lession7
//
//  Created by Nguyen Dong Son on 3/23/18.
//  Copyright © 2018 Nguyen Dong Son. All rights reserved.
//

import UIKit

class ScheduleDetailViewController: UIViewController {
    @IBOutlet weak var tfschedule: UITextField!
    @IBOutlet weak var dpdatepicker: UIDatePicker!
    @IBAction func btSaveSchedule(_ sender: Any) {
        let todoItem = TodoItem(deadline: dpdatepicker.date, title: tfschedule.text!, UUID: UUID().uuidString)
        TodoList.sharedInstance.addItem(todoItem) // schedule a local notification to persist this item
        let _ = self.navigationController?.popViewController(animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ScheduleDetailViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
