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
        //append knockedPins to the rolls array
        rolls.append(knockedPins)

    }
    
    func score () -> Int {
        var totalScore:Int = 0
        // rename i to frameIndex, better name for a variable
//        var i:Int = 0
        var frameIndex = 0
        let frames = [Int](1...10)
        frames.enumerated().forEach {print("Frames: ", $0, ":", $1)}
        for(index, element) in rolls.enumerated() {
            print("Item \(index): \(element)")
        }
        
        //loop through the frames array
        for _ in 0..<frames.count {
            
             //check if current index at i equals 10
            //strike
            if(rolls[frameIndex] == 10){
                totalScore += 10 + rolls[frameIndex+1] + rolls[frameIndex+2]
                    frameIndex+=1
            }
            //check if current index at i = 0 plus the next one equals 10
             else if(rolls[frameIndex] + rolls[frameIndex+1] == 10) {
                //if true totalScore = 10
                // 10 plus the next roll in the rolls iteration
                totalScore += 10 + rolls[frameIndex+2]
                frameIndex += 2 // i now starts 2 iterations over since I added i and i+1
            } else {
                //if i and i+1 do not = 10 just add them and add to the totalScore
                totalScore += rolls[frameIndex] + rolls[frameIndex+1]
                frameIndex += 2 // i now starts 2 iterations over since I added i and i+1
            }
        }
        print("Frames: \(rolls)")
        return totalScore;
    }
}

