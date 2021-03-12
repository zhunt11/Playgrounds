
import Foundation

struct MAAAccount: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var accountNumber: String
    var accessLevel: String
}
