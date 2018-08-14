//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Mahmoud Mohammed on 8/13/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: CREATE_GOAL_VC) else { return }
        pressentDetail(createGoalVC)
    }
    

}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GOAL_CELL) as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "My Goal", type: .shortTerm , goalProgressAmount: 2)
        return cell
        
    }
    
}




