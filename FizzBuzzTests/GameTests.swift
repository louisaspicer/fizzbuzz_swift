//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Pea M. Tyczynska on 30/01/2017.
//  Copyright © 2017 Makers Academy. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()

    }
    
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfFizzIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testFizzIsWrong() {
        game.score = 3
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    
    func testIfBuzzIsWrong() {
        game.score = 5
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzIsWrong() {
        game.score = 15
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsRight() {
        game.score = 6
        let result = game.play(move: "7")
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberIsWrong() {
        game.score = 9
        let result = game.play(move: "10")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
