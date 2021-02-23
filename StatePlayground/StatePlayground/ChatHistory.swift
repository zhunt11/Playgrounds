//
//  ChatHistory.swift
//  StatePlayground
//
//  Created by zacharyhunt on 12/17/20.
//

import Foundation

class History: ObservableObject, Identifiable {
    var id: Int = 0
    @Published var messages: [String] = []
}
