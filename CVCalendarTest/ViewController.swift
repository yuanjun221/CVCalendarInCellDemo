//
//  ViewController.swift
//  CVCalendarTest
//
//  Created by Jun.Yuan on 2016/9/27.
//  Copyright © 2016年 Jun.Yuan. All rights reserved.
//

import UIKit
import CVCalendar

class ViewController: UIViewController {

    @IBOutlet weak var menuView: CVCalendarMenuView!
    @IBOutlet weak var calendarView: CVCalendarView!
}


extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.menuViewDelegate = self
        calendarView.calendarDelegate = self

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
}


extension ViewController: CVCalendarMenuViewDelegate {
    
}


extension ViewController: CVCalendarViewDelegate {

    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    func firstWeekday() -> Weekday {
        return .sunday
    }
}
