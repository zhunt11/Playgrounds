
import SwiftUI

@main
struct ChatPlaygroundApp: App {
    @StateObject var chatHistory = ChatHistory()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(chatHistory)
        }
    }
}
