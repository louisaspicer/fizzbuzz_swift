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
        score += 1
        
        let result = brain.check(number: score)
        
        if result == move {
        return true
        }  else {
            return false
        }
    }
    
}
