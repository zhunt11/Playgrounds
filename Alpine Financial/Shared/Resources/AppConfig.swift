
import Foundation

struct AppConfig {
    var menuType: MenuType
    
    enum MenuType: String, Decodable {
        case standard
        case plainCollapsible
        case inset
        case insetCollapsible
    }
}
