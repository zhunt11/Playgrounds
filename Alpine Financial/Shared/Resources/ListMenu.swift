
import Foundation
import SwiftUI

struct ListMenu: Hashable, Codable {
    var sections: [MenuSection]
}

struct MenuSection: Hashable, Codable, Identifiable {
    var id: Int
    var header: String?
    var items: [MenuItem]
    var color: AFColor?
}

struct MenuItem: Hashable, Codable, Identifiable {
    var id: Int
    var icon: String
    var text: String
    var color: AFColor?
}

struct AFColor: Hashable, Codable {
    var value: String?
    
    var color: Color {
        if (value == "system.blue") {
            return Color.init(UIColor.systemBlue)
        }
        else if (value == "system.green") {
            return Color.init(UIColor.systemGreen)
        }
        else if (value == "system.indigo") {
            return Color.init(UIColor.systemIndigo)
        }
        else if (value == "system.orange") {
            return Color.init(UIColor.systemOrange)
        }
        else if (value == "system.pink") {
            return Color.init(UIColor.systemPink)
        }
        else if (value == "system.purple") {
            return Color.init(UIColor.systemPurple)
        }
        else if (value == "system.red") {
            return Color.init(UIColor.systemRed)
        }
        else if (value == "system.teal") {
            return Color.init(UIColor.systemTeal)
        }
        else if (value == "system.yellow") {
            return Color.init(UIColor.systemYellow)
        }
        else if (value == "system.gray1") {
            return Color.init(UIColor.systemGray)
        }
        else if (value == "system.gray2") {
            return Color.init(UIColor.systemGray2)
        }
        else if (value == "system.gray3") {
            return Color.init(UIColor.systemGray3)
        }
        else if (value == "system.gray4") {
            return Color.init(UIColor.systemGray4)
        }
        else if (value == "system.gray5") {
            return Color.init(UIColor.systemGray5)
        }
        else if (value == "system.gray6") {
            return Color.init(UIColor.systemGray6)
        }
        else { // custom color
            if let parts = value?.components(separatedBy: ",") {
                let red = Double(parts[0]) ?? 0.0
                let green = Double(parts[1]) ?? 0.0
                let blue = Double(parts[2]) ?? 0.0
                return Color.init(red: red/255, green: green/255, blue: blue/255)
            }
            else {
                return Color.black
            }
        }
    }
}
