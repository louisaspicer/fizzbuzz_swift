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
            numberButton.setTitle(_:"1",for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        play(move: "1")
    }

    @IBOutlet weak var numberButton: UIButton!
}

