
import Foundation

struct Chat: Hashable, Codable, Identifiable {
    var id: Int
    var messageDate: String
    var messageStatus: String
    var messageText: String
    var isSender: Bool
}
