//
//  ViewController.swift
//  Swift_BowlingGame_TDD
//
//  Created by Quintessa Anderson on 4/15/19.
//  Copyright © 2019 Quintessa Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class Game {
    private var rolls: [Int] = [];

    func roll (knockedPins: Int) {
        rolls.append(knockedPins)
    }
    
    func score () -> Int {
        var totalScore:Int = 0

        rolls.forEach { roll in
            totalScore += roll
        }
        return totalScore;
    }
}
