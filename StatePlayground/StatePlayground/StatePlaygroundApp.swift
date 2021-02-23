//
//  StatePlaygroundApp.swift
//  StatePlayground
//
//  Created by zacharyhunt on 12/17/20.
//

import SwiftUI

@main
struct StatePlaygroundApp: App {
    @StateObject var history = History()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(history)
        }
    }
}
