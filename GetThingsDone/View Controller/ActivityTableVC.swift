//
//  ActivityTableViewController.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/15/21.
//

import UIKit

class ActivityTableVC: UIViewController {
    
    let tableView = UITableView()
    var activities = ["work", "chores", "study", "bills"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Activities"
        
        configureTableView()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds //tableview constraints
        
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ActivityTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)

        
        cell.textLabel?.text = activities[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell tapped")
    }
    
    
}


