//
//  ActivityDetailVC.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/16/21.
//

import UIKit

class ActivityDetailVC: UIViewController {
    
    var startTimeLabel : UILabel!
    var stopTimeLabel  : UILabel!
    var reminderLabel  : UILabel!
    
    var activity: Activity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let activity = activity else { return }
        
        title = activity.name
        
        startTimeLabel.text = activity.start
        stopTimeLabel.text  = activity.stop
        reminderLabel.text  = String(activity.reminderIntervals)
        
    }

}
