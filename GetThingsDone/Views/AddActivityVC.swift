//
//  AddActivityVC.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/16/21.
//

import UIKit

class AddActivityVC: UIViewController {
    
    var activityLabel               : UILabel!
    var startTimeLabel              : UILabel!
    var stopTimeLabel               : UILabel!
    var reminderIntervalsLabel      : UILabel!
    
    var activityTextField           : UITextField!
    var startTimeTextField          : UITextField!
    var stopTimeTextField           : UITextField!
    var reminderIntervalsTextField  : UITextField!
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func updateView() {
        navigationItem.title = "Add Activity"
        view.backgroundColor = .white
        
        
    }
    
    private func setupTextField() {
        
        let allTextFields = [activityTextField, startTimeTextField, stopTimeTextField, reminderIntervalsTextField]
        
        // Set UITextField placeholder text
        activityTextField.placeholder = "Name of activity"
        startTimeTextField.placeholder = "Time to start activity"
        stopTimeTextField.placeholder = "Time to end activity"
        reminderIntervalsTextField.placeholder = "Reminders"
        
        for textfield in allTextFields {
            
            // Set UITextField border style
            if let textfield = textfield {
            
                textfield.borderStyle = UITextField.BorderStyle.line
                
                // Add UITextField as a subview
                self.view.addSubview(textfield)
            }
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
