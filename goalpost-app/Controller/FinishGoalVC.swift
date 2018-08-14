//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Mahmoud Mohammed on 8/14/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextFielf: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType = .shortTerm
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        
    }
    
    

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
    }
    
}
