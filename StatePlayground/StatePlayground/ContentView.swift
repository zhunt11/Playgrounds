//
//  ContentView.swift
//  StatePlayground
//
//  Created by zacharyhunt on 12/17/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environmentObject: History
    @State private var text = ""
    
    var body: some View {
        
        VStack {
            VStack {
                TextView()
            }
            
            TextField("Type something", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Submit") {
                environmentObject.messages.append("\(text)")
            }
        }
    }
}

struct TextView: View {
    @EnvironmentObject var environmentObject: History
    
    var body: some View {
        VStack {
            ForEach (environmentObject.messages, id: \.self) { message in
                Text("\(message)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(History())
    }
}
