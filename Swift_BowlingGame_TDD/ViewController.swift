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
    private var rolls: [Int] = [21];
    private var currentRoll:Int = 0;
    
    
    func roll (knockedPins: Int) {
        rolls[currentRoll] = knockedPins
    }
    
    func score () -> Int {
        var totalScore:Int = 0

        for _ in rolls {
            totalScore += rolls[currentRoll]
        }
//        totalScore += rolls[currentRoll];
//        for i in stride(from: 0, to: 21, by: 1){
//            totalScore += i;
//            print(i)
//        }
        
        return totalScore;

        //        for i in rolls(from: 0, by: 1){
//            score += rolls[i]
//        }
    }
}
