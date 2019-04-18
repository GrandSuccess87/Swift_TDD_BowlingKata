//
//  Swift_BowlingGame_TDDTests.swift
//  Swift_BowlingGame_TDDTests
//
//  Created by Quintessa Anderson on 4/15/19.
//  Copyright © 2019 Quintessa Anderson. All rights reserved.
//

import XCTest
@testable import Swift_BowlingGame_TDD

class Swift_BowlingGame_TDDTests: XCTestCase {
    var game: Game!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        game = Game()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    private func rollMany(n:Int, pinsFallen:Int) {
        for _ in 1...n {
            game.roll(knockedPins:pinsFallen)
        }
    }
    
    func testGutterGame() {
        rollMany(n:20, pinsFallen: 0)
        XCTAssertEqual(game.score(), 0)
    }
    
    func testAllOnes() {
        rollMany(n: 20, pinsFallen: 1)
        XCTAssertEqual(game.score(), 20)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
