//
//  ViewController.swift
//  lifecounter
//
//  Created by Liam Brozik on 1/29/19.
//  Copyright © 2019 iSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var p1 = 20
    var p2 = 20
    var p3 = 20
    var p4 = 20
    var p5 = 20
    var p6 = 20
    var p7 = 20
    var p8 = 20
    
    var superhit = 5
    
    var playerCount = 4;
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var player5: UILabel!
    @IBOutlet weak var player6: UILabel!
    @IBOutlet weak var player7: UILabel!
    @IBOutlet weak var player8: UILabel!
    @IBOutlet weak var loser: UILabel!
    @IBOutlet weak var player5View: UIView!
    @IBOutlet weak var player6View: UIView!
    @IBOutlet weak var player7View: UIView!
    @IBOutlet weak var player8View: UIView!
    @IBOutlet weak var NewPlayerButton: UIBarButtonItem!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    
    @IBOutlet weak var n1: UIButton!
    @IBOutlet weak var n2: UIButton!
    @IBOutlet weak var n3: UIButton!
    @IBOutlet weak var n4: UIButton!
    @IBOutlet weak var n5: UIButton!
    @IBOutlet weak var n6: UIButton!
    @IBOutlet weak var n7: UIButton!
    @IBOutlet weak var n8: UIButton!
    
    
    func checkLoss(_ score: Int, name: String) {
        if (score <= 0) {
            if playerCount < 8 {
                NewPlayerButton.isEnabled = true
            }
            self.player1.text = "20"
            self.p1 = 20
            self.player2.text = "20"
            self.p2 = 20
            self.player3.text = "20"
            self.p3 = 20
            self.player4.text = "20"
            self.p4 = 20
            self.player5.text = "20"
            self.p5 = 20
            self.player6.text = "20"
            self.p6 = 20
            self.player7.text = "20"
            self.p7 = 20
            self.player8.text = "20"
            self.p8 = 20
            self.loser.isHidden = false
            self.loser.text = "\(name) has lost!"
        }
    }
    
    @IBAction func newPlayer(_ sender: UIBarButtonItem) {
        switch playerCount {
            case 4: player5View.isHidden = false
            case 5: player6View.isHidden = false
            case 6: player7View.isHidden = false
            case 7: player8View.isHidden = false
                NewPlayerButton.isEnabled = false
            default:
                NewPlayerButton.isEnabled = false
            
        }
        playerCount += 1
    }
    
    @IBAction func editPress(_ sender: UIButton) {
        //Create the alert controller.
        let alert = UIAlertController(title: "New Value", message: "For Damage", preferredStyle: .alert)
        
        //Add the text field. You can configure it however you need.
        alert.addTextField { (userField) in
            userField.placeholder = "User"
            userField.keyboardType = .numberPad
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        //the confirm action taking the inputs
        let acceptAction = UIAlertAction(title: "Enter", style: .default, handler: { [weak alert] (_) in
            guard let userField = alert?.textFields?[0] else {
                print("Issue with Alert TextFields")
                return
            }
            guard let userName = userField.text else {
                print("Issue with TextFields Text")
                return
            }
            print("Text field: \(userName)")
            
            self.superhit = Int(userName)!
            self.updateButtons(userName)
            // Condition Logic
        })
        
        //adding the actions to alertController
        alert.addAction(acceptAction)
        alert.addAction(cancelAction)
        
        // Presenting the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func updateButtons(_ username: String) {
        self.b1.setTitle(username, for: .normal)
        self.b2.setTitle(username, for: .normal)
        self.b3.setTitle(username, for: .normal)
        self.b4.setTitle(username, for: .normal)
        self.b5.setTitle(username, for: .normal)
        self.b6.setTitle(username, for: .normal)
        self.b7.setTitle(username, for: .normal)
        self.b8.setTitle(username, for: .normal)
        self.n1.setTitle("-\(username)", for: .normal)
        self.n2.setTitle("-\(username)", for: .normal)
        self.n3.setTitle("-\(username)", for: .normal)
        self.n4.setTitle("-\(username)", for: .normal)
        self.n5.setTitle("-\(username)", for: .normal)
        self.n6.setTitle("-\(username)", for: .normal)
        self.n7.setTitle("-\(username)", for: .normal)
        self.n8.setTitle("-\(username)", for: .normal)

    }
    
    @IBAction func plusPress(_ sender: UIButton) {
        NewPlayerButton.isEnabled = false
        self.loser.isHidden = true
        switch sender.tag {
            case 1: p1 += 1
                self.player1.text = String(p1)
                checkLoss(p1, name: "Player 1")
            case 2: p2 += 1
                self.player2.text = String(p2)
                checkLoss(p2, name: "Player 2")
            case 3: p3 += 1
                self.player3.text = String(p3)
                checkLoss(p3, name: "Player 3")
            case 4: p4 += 1
                self.player4.text = String(p4)
                checkLoss(p4, name: "Player 4")
            case 5: p1 += superhit
                self.player1.text = String(p1)
                checkLoss(p1, name: "Player 1")
            case 6: p2 += superhit
                self.player2.text = String(p2)
                checkLoss(p2, name: "Player 2")
            case 7: p3 += superhit
                self.player3.text = String(p3)
                checkLoss(p3, name: "Player 3")
            case 8: p4 += superhit
                self.player4.text = String(p4)
                checkLoss(p4, name: "Player 4")
            case 9: p1 -= 1
                self.player1.text = String(p1)
                checkLoss(p1, name: "Player 1")
            case 10: p2 -= 1
                self.player2.text = String(p2)
                checkLoss(p2, name: "Player 2")
            case 11: p3 -= 1
                self.player3.text = String(p3)
                checkLoss(p3, name: "Player 3")
            case 12: p4 -= 1
                self.player4.text = String(p4)
                checkLoss(p4, name: "Player 4")
            case 13: p1 -= superhit
                self.player1.text = String(p1)
                checkLoss(p1, name: "Player 1")
            case 14: p2 -= superhit
                self.player2.text = String(p2)
                checkLoss(p2, name: "Player 2")
            case 15: p3 -= superhit
                self.player3.text = String(p3)
                checkLoss(p3, name: "Player 3")
            case 16: p4 -= superhit
                self.player4.text = String(p4)
                checkLoss(p4, name: "Player 4")
            case 17: p5 += 1
                self.player5.text = String(p5)
                checkLoss(p5, name: "Player 5")
            case 18: p6 += 1
                self.player6.text = String(p6)
                checkLoss(p6, name: "Player 6")
            case 19: p7 += 1
                self.player7.text = String(p7)
                checkLoss(p7, name: "Player 7")
            case 20: p8 += 1
                self.player8.text = String(p8)
                checkLoss(p8, name: "Player 8")
            case 21: p5 += superhit
                self.player5.text = String(p5)
                checkLoss(p5, name: "Player 5")
            case 22: p6 += superhit
                self.player6.text = String(p6)
                checkLoss(p6, name: "Player 6")
            case 23: p7 += superhit
                self.player7.text = String(p7)
                checkLoss(p7, name: "Player 7")
            case 24: p8 += superhit
                self.player8.text = String(p8)
                checkLoss(p8, name: "Player 8")
            case 25: p5 -= 1
                self.player5.text = String(p5)
                checkLoss(p5, name: "Player 5")
            case 26: p6 -= 1
                self.player6.text = String(p6)
                checkLoss(p6, name: "Player 6")
            case 27: p7 -= 1
                self.player7.text = String(p7)
                checkLoss(p7, name: "Player 7")
            case 28: p8 -= 1
                self.player8.text = String(p8)
                checkLoss(p8, name: "Player 8")
            case 29: p5 -= superhit
                self.player5.text = String(p5)
                checkLoss(p5, name: "Player 5")
            case 30: p6 -= superhit
                self.player6.text = String(p6)
                checkLoss(p6, name: "Player 6")
            case 31: p7 -= superhit
                self.player7.text = String(p7)
                checkLoss(p7, name: "Player 7")
            case 32: p8 -= superhit
                self.player8.text = String(p8)
                checkLoss(p8, name: "Player 8")
            default:
                return
        }
    }
    
}

