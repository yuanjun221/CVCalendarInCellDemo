//
//  CalendarTableViewCell.swift
//  CVCalendarTest
//
//  Created by Jun.Yuan on 2016/9/27.
//  Copyright © 2016年 Jun.Yuan. All rights reserved.
//

import UIKit
import CVCalendar

class CalendarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuView: CVCalendarMenuView!
    @IBOutlet weak var calendarView: CVCalendarView!
    
    var tableView: UITableView!
}


extension CalendarTableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        menuView.menuViewDelegate = self
        calendarView.calendarDelegate = self
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        tableView.beginUpdates()
        tableView.endUpdates()
    }
}


extension CalendarTableViewCell: CVCalendarMenuViewDelegate {
    
}


extension CalendarTableViewCell: CVCalendarViewDelegate {
    
    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    func firstWeekday() -> Weekday {
        return .sunday
    }
}
