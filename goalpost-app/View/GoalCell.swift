//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Mahmoud Mohammed on 8/13/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        if goal.goalCompletionValue == goal.goalProgress {
            completionView.isHidden = false
        } else {
            completionView.isHidden = true
        }
    }
    

}
