//
//  DependencyInjectionTests.swift
//  DependencyInjectionTests
//
//  Created by Zachary Hunt on 7/10/21.
//

import XCTest
@testable import DependencyInjection

class DependencyInjectionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRaceCarEngine() throws {
        let raceCarEngine = RaceCarEngine()
        let raceCar = Vehicle(engine: raceCarEngine)
        
        XCTAssert(raceCar.goForward() == "Vrooooom!")
    }
    
    func testTeslaEngine() throws {
        let teslaEngine = TeslaEngine()
        let model3 = Vehicle(engine: teslaEngine)
        
        XCTAssert(model3.goForward() == "Whirrrrrrrr")
    }
    
    func testRocketEngine() throws {
        let rocketEngine = RocketEngine()
        let dragon = Vehicle(engine: rocketEngine)
        
        XCTAssert(dragon.goForward() == "3-2-1...Ignition...PPPPSSSSCHHHHOOOOOOOOOMMMMMM!!!")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
