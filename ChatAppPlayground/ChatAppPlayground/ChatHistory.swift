
import Foundation

class ChatHistory: ObservableObject, Identifiable {
    var id: Int = 0
    @Published var messages: [ChatMessage] = []
}

struct ChatMessage: Hashable {
    var id: Int
    var messageDate: String
    var messageStatus: String
    var messageText: String
    var isSender: Bool
}
