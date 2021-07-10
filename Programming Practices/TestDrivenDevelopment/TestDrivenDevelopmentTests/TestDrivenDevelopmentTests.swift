//
//  TestDrivenDevelopmentTests.swift
//  TestDrivenDevelopmentTests
//
//  Created by Zachary Hunt on 7/10/21.
//

import XCTest
@testable import TestDrivenDevelopment

class TestDrivenDevelopmentTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() throws {
        
        /*
         Step 1: Write this test to add 2 numbers. The test should call an add() function (which doesn't yet exist)
         Step 2: Obviously this won't compile. Write the add() function which will add 2 numbers and return the result.
         Step 3: Run the test.
         
         Conclusion: This is a simple example that shows the rudimentary process of TDD: Write test to do a thing
         and write the minimum amount of code you need in order for the test to pass.
         */
        
        let firstNumber = 5
        let secondNumber = 10
        
        let calculator = Calculator()
        
        XCTAssertEqual(calculator.add(5, 10), firstNumber+secondNumber)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
