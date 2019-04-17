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
        let frames: [Int] = [10]
        
//        frames.forEach { frame in
        
        //print current index and it's value
        for(index, element) in rolls.enumerated() {
            print("Item \(index): \(element)")
        }
        
        //iterate by frame now, not through rolls array as before
        //create i variable set equal to 0
//        var i:Int = 0
        for i in 0..<frames.count {
            totalScore += rolls[i] + rolls[i+1]
            i += 2
        }
//            for i in 0..<rolls.count {
//                totalScore += rolls[i]
//            }
//        }
    
        return totalScore;
    }
}

