//
//  ActivityTableViewController.swift
//  GetThingsDone
//
//  Created by Marc Jacques on 8/15/21.
//

import UIKit

class ActivityTableVC: UIViewController {
    
    let tableView = UITableView()
    var activities = [Activity]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Activities"
        
        configureTableView()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds //tableview constraints
        
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
        addButton()
    }
    
    private func addButton() {
        let addButton = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                        style: .plain,
                                        target: self,
                                        action: #selector(addActivity)
        )
        
        self.navigationItem.rightBarButtonItem = addButton
    }
    
   
    @objc func addActivity() {
        let addActivityVC = AddActivityVC()
        navigationController?.pushViewController(addActivityVC, animated: true)
        
    }
    
}

extension ActivityTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)

        
        cell.textLabel?.text = activities[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell tapped")
        
        
        let activityDetailVC = ActivityDetailVC()
        activityDetailVC.activity = activities[indexPath.row]
        
        navigationController?.pushViewController(activityDetailVC, animated: true)
    }
    
    
}


