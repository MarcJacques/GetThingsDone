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
        
        activityLabel               = UILabel()
        startTimeLabel              = UILabel()
        stopTimeLabel               = UILabel()
        reminderIntervalsLabel      = UILabel()
        
        activityTextField           = UITextField()
        startTimeTextField          = UITextField()
        stopTimeTextField           = UITextField()
        reminderIntervalsTextField  = UITextField()
        
        
        activityLabel.translatesAutoresizingMaskIntoConstraints = false
        startTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        stopTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        reminderIntervalsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        activityLabel.textAlignment = .right
        startTimeLabel.textAlignment = .right
        stopTimeLabel.textAlignment = .right
        reminderIntervalsLabel.textAlignment = .right
        
        setupLabels()
        
        setupTextFields()
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func updateView() {
        navigationItem.title = "Add Activity"
        view.backgroundColor = .white
        setupLabels()
        setupTextFields()
    }
    
    private func setupLabels() {
        
        let allLabels = [activityLabel, startTimeLabel, stopTimeLabel, reminderIntervalsLabel]
        for label in allLabels {
            if let label = label {
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textAlignment = .right
                self.view.addSubview(label)
            }
        }
        
        activityLabel.text = "Activity:"
        startTimeLabel.text = "Start Time:"
        stopTimeLabel.text = "Stop Time:"
        reminderIntervalsLabel.text = "Reminder Intervals:"
        
        
        
        NSLayoutConstraint.activate([
            activityLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            activityLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            
            startTimeLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: activityLabel.bottomAnchor, multiplier: 0),
            startTimeLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            
            stopTimeLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: startTimeLabel.bottomAnchor, multiplier: 0),
            stopTimeLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            
            reminderIntervalsLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: stopTimeLabel.bottomAnchor, multiplier: 0),
            reminderIntervalsLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        ])
        
    }
    
    private func setupTextFields() {
        
        let allTextFields = [activityTextField, startTimeTextField, stopTimeTextField, reminderIntervalsTextField]
        
        for textfield in allTextFields {
            
            // Set UITextField border style
            if let textfield = textfield {
                
                
                textfield.textAlignment = .right
                textfield.borderStyle = UITextField.BorderStyle.line
                
                // Add UITextField as a subview
                self.view.addSubview(textfield)
            }
            
            
        }
        
        // Set UITextField placeholder text
        activityTextField.placeholder = "Name of activity"
        startTimeTextField.placeholder = "Time to start activity"
        stopTimeTextField.placeholder = "Time to end activity"
        reminderIntervalsTextField.placeholder = "Reminders"
        
        NSLayoutConstraint.activate([
            
            activityTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: activityLabel.trailingAnchor, multiplier: 0),
            activityTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            startTimeTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: startTimeLabel.trailingAnchor, multiplier: 0),
            startTimeTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            stopTimeTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: stopTimeLabel.trailingAnchor, multiplier: 0),
            stopTimeTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            reminderIntervalsTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: reminderIntervalsLabel.trailingAnchor, multiplier: 0),
            reminderIntervalsTextField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
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
