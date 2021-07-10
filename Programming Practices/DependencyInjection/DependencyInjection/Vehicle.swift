//
//  Vehicle.swift
//  DependencyInjection
//
//  Created by Zachary Hunt on 7/10/21.
//

import Foundation

protocol Propulsion {
    func move() -> String
}

class Vehicle {
    var engine: Propulsion
    
    // This is the dependency being injected - a.k.a Dependency Injection
    init(engine: Propulsion) {
        self.engine = engine
    }
    
    func goForward() -> String {
        return engine.move()
    }
}
