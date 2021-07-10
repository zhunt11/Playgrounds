//
//  Engines.swift
//  DependencyInjection
//
//  Created by Zachary Hunt on 7/10/21.
//

import Foundation

class RaceCarEngine: Propulsion {
    func move() -> String {
        return "Vrooooom!"
    }
}

class TeslaEngine: Propulsion {
    func move() -> String {
        return "Whirrrrrrrr"
    }
}

class RocketEngine: Propulsion {
    func move() -> String {
        return "3-2-1...Ignition...PPPPSSSSCHHHHOOOOOOOOOMMMMMM!!!"
    }
}
