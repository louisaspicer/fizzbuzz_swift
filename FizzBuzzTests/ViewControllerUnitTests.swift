//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Louisa Spicer on 31/01/2017.
//  Copyright © 2017 Makers Academy. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    func test() {
        XCTAssertTrue(true)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
}
