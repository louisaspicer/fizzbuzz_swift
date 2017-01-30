//
//  Game.swift
//  FizzBuzz
//
//  Created by Pea M. Tyczynska on 30/01/2017.
//  Copyright © 2017 Makers Academy. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    var brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return true
        }  else {
            return false
        }
    }
    
}
