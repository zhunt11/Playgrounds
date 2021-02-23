
import SwiftUI

struct PlainMenu: View {
    
    @State private var isExpanded: Bool = false
    
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
                    ForEach(section.items, id: \.self) { item in
                        Label(item.text, systemImage: item.icon)
                            .accentColor(item.color != nil ? item.color?.color : section.color?.color)
                    }
                    
                    Divider()
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct PlainMenu_Previews: PreviewProvider {
    static var previews: some View {
        PlainMenu()
    }
}
