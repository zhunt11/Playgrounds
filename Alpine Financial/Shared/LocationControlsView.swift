
import SwiftUI

struct LocationControlsView: View {
    @State var isMyLocationOn: Bool = false
    @State var isInternationalOn: Bool = false
    @State var isRegionsOn: Bool = false
    
    var body: some View {
        List {
            Section(header: Text("My Location"), footer: Text("Transactions will only be permitted at the current location of this device.")) {
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.blue)
                    Toggle("My Location", isOn: $isMyLocationOn)
                }
            }
            
            Section(header: Text("International Transactions"), footer: Text("Allow transactions outside the United States.")) {
                HStack {
                    Image(systemName: "airplane")
                        .foregroundColor(.blue)
                    Toggle("International Transactions", isOn: $isInternationalOn)
                }
            }
            
            Section(header: Text("Regions"), footer: Text("Transactions will only be permitted inside defined regions.")) {
                
                HStack {
                    Image(systemName: "map.fill")
                        .foregroundColor(.blue)
                    Toggle("Regions", isOn: $isRegionsOn)
                }
                
                if (isRegionsOn) {
                    NavigationLink(
                        destination: Text("Set Regions"),
                        label: {
                            Text("Set Regions")
                        })
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle(Text("Location Controls"))
    }
}

struct LocationControlsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationControlsView()
    }
}
