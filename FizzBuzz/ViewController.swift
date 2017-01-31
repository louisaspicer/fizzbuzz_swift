//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Pea M. Tyczynska on 30/01/2017.
//  Copyright © 2017 Makers Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game : Game?
    
    var gameScore : Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("Game Score is nil")
                return
            }
            numberButton.setTitle(_:"\(unwrappedScore)",for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
            if sender == numberButton {
                play(move: Move.Number)
            } else {
                play(move: Move.Fizz)
            }
    }

    @IBOutlet weak var FizzButton: UIButton!
    @IBOutlet weak var numberButton: UIButton!
}

