
import SwiftUI

struct CollapsibleMenu: View {
    @State var isExpanded = true
    
    var body: some View {
        ZStack {
            Form {
                ForEach(listMenu.sections) { section in
                    if let header = section.header {
                        Section {
                            DisclosureGroup(
                                isExpanded: $isExpanded,
                                content: {
                                    ForEach(section.items, id: \.self) { item in
                                        Label(item.text, systemImage: item.icon)
                                            .accentColor(item.color != nil ? item.color?.color : section.color?.color)
                                    }
                                },
                                label: {
                                    Text(header)
                                })
                        }
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
        }
    }
}

struct CollapsibleMenu_Previews: PreviewProvider {
    static var previews: some View {
        CollapsibleMenu()
    }
}
