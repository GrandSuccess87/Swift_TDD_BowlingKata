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
//        let frames: [Int] = [10]
        let frames = [Int](1...10)
        frames.enumerated().forEach {print("Frames: ", $0, ":", $1)}
//        print("Frames.enumerated.forEach \(frames)")

//        frames.forEach { frame in
//        for _ in 0..<frames.count {

            for i in 0..<rolls.count {
                totalScore += rolls[i]
            }
            
            for(index, element) in rolls.enumerated() {
                print("Item \(index): \(element)")
            }

//        }
        //iterate by frame now, not through rolls array as before
        //create i variable set equal to 0
//        var i:Int = 0
//        for var i in 0..<frames.count {
//        frames.forEach { frame in
//            totalScore += rolls[i] + rolls[i+1]
//            i += 2
//        }
//        }

        return totalScore;
    }
}

