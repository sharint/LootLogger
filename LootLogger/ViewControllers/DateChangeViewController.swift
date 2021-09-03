//
//  DateChangeViewController.swift
//  LootLogger
//
//  Created by Тимофей Кулижников on 31.08.2021.
//

import UIKit

class DateChangeViewController: UIViewController{
    
    @IBOutlet var datePicker: UIDatePicker!
    
    var dateValue: Date!
    
    var item: Item!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        datePicker.date = dateValue
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        item.dateCreated = datePicker.date
        //dateValue = datePicker.date
    }
}
