//
//  STS1UITests.swift
//  STS1UITests
//
//  Created by Rollin Francois on 8/6/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import XCTest

class STS1UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    
        
        
        
        let element3 = XCUIApplication().children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 1)
        let element2 = element3.children(matching: .other).element(boundBy: 0)
        let button = element2.children(matching: .button).element(boundBy: 0)
        button.tap()
        
        let button2 = element2.children(matching: .button).element(boundBy: 1)
        button2.tap()
        
        let button3 = element3.children(matching: .other).element(boundBy: 1).children(matching: .button).element
        button3.tap()
        button.tap()
        button2.tap()
        button3.tap()
        XCUIDevice.shared().orientation = .landscapeRight
        
        let element = element2.children(matching: .other).element
        element.children(matching: .button).element(boundBy: 0).tap()
        element.children(matching: .button).element(boundBy: 1).tap()
        button3.tap()
        XCUIDevice.shared().orientation = .portrait
        button3.tap()
        
        
        
        
    }
    
}
