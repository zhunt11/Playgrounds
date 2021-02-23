
import SwiftUI

struct DefaultMenu: View {
    var body: some View {
        List {
            ForEach(listMenu.sections) { section in
                if let header = section.header {
                    Section(header: Text(header)) {
                        ForEach(section.items, id: \.self) { item in
                            Label(item.text, systemImage: item.icon)
                                .accentColor(item.color != nil ? item.color?.color : section.color?.color)
                        }
                    }
                    .accentColor(section.color?.color)
                }
                else {
                    Section {
                        ForEach(section.items, id: \.self) { item in
                            Label(item.text, systemImage: item.icon)
                                .accentColor(item.color != nil ? item.color?.color : section.color?.color)
                        }
                    }
                    .accentColor(section.color?.color)
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct DefaultMenu_Previews: PreviewProvider {
    static var previews: some View {
        DefaultMenu()
    }
}
