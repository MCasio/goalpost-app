//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Mahmoud Mohammed on 8/14/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

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
        pointsTextFielf.delegate = self
        
    }
    
    

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextFielf.text != "" {
            save { (complete) in
                if complete {
                    performSegue(withIdentifier: UNWIND, sender: nil)
                }
            }
        }
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextFielf.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Saved Successfully")
            completion(true)
        } catch {
            debugPrint("Coudn`t Save: \(error.localizedDescription)")
            completion(false)
        }
    }
}










