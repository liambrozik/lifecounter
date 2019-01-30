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
    var p1 = 5
    var p2 = 5
    var p3 = 5
    var p4 = 5
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var loser: UILabel!
    
    func checkLoss(_ score: Int, name: String) {
        if (score <= 0) {
            self.loser.text = "\(name) has lost!"
        }
    }
    
    @IBAction func plusPress(_ sender: UIButton) {
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
        case 5: p1 += 5
            self.player1.text = String(p1)
            checkLoss(p1, name: "Player 1")
        case 6: p2 += 5
            self.player2.text = String(p2)
            checkLoss(p2, name: "Player 2")
        case 7: p3 += 5
            self.player3.text = String(p3)
            checkLoss(p3, name: "Player 3")
        case 8: p4 += 5
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
        case 13: p1 -= 5
            self.player1.text = String(p1)
            checkLoss(p1, name: "Player 1")
        case 14: p2 -= 5
            self.player2.text = String(p2)
            checkLoss(p2, name: "Player 2")
        case 15: p3 -= 5
            self.player3.text = String(p3)
            checkLoss(p3, name: "Player 3")
        case 16: p4 -= 5
            self.player4.text = String(p4)
            checkLoss(p4, name: "Player 4")
        default:
            return
        }
    }
    
}

