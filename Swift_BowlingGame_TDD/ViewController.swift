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
    
    var rolls:[Int] = []
    let frames = [Int](1...10)
    
    func roll(knockedPins:Int) {
        rolls.append(knockedPins)
    }
    
    func score() -> Int {
        var totalScore:Int = 0
        var i:Int = 0
        
        for _ in 0..<frames.count {
            if(rolls[i] == 10) {
                totalScore += 10 + rolls[i+1] + rolls[i+2]
                i+=1
            }
            else if(rolls[i] + rolls[i+1] == 10) {
                totalScore += 10 + rolls[i+2]
                i+=2
            } else {
                totalScore += rolls[i] + rolls[i+1]
                i+=2

            }
        }
        return totalScore
    }
}


































//class Game {
//    private var rolls:[Int] = []
//
//    func roll (knockedPins:Int) {
//        rolls.append(knockedPins)
//    }
//
//    func score() -> Int {
//        var totalScore:Int = 0
//        var i:Int = 0
//        let frames = [Int](1...10)
//
//        for _ in 0..<frames.count{
//            if(rolls[i] + rolls[i+1] == 10) {
//                totalScore += 10 + rolls[i+2]
//                i+=2
//            } else {
//                //            rolls.forEach{roll in
//                totalScore += rolls[i] + rolls[i+1]
//                i += 2
//            }
//        }
//        return totalScore
//    }
//}
