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
    private var totalScore:Int = 0
    func roll (knockedPins:Int) {
        totalScore += knockedPins
    }
    func score () -> Int {
        return totalScore
    }
}
