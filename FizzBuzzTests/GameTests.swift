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
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testFizzIsWrong() {
        game.score = 3
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzIsRight() {
        game.score = 4
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    
    func testIfBuzzIsWrong() {
        game.score = 5
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzIsRight() {
        game.score = 14
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzIsWrong() {
        game.score = 15
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsRight() {
        game.score = 6
        let response = game.play(move: "7")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberIsWrong() {
        game.score = 9
        let response = game.play(move: "10")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
