
import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            if UIDevice.current.userInterfaceIdiom == .pad || UIDevice.current.userInterfaceIdiom == .mac
            {
                PlainMenu()
                    .navigationTitle("Menu")
                ContentView()
            }
            else if UIDevice.current.userInterfaceIdiom == .phone {
                CollapsibleMenu()
                    .navigationTitle("Menu")
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
