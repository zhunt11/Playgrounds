
import SwiftUI

struct MAAListView: View {
    @State var addViewIsPresented: Bool = false
    
    var body: some View {
        NavigationView {
            List(maaAccounts) { account in
                Section {
                    NavigationLink(
                        destination: MAAAccountDetailView(account: account),
                        label: {
                            DoubleLabelCell(text: account.name, detailText: account.accountNumber)
                        })
                }
            }
            .navigationBarTitle(Text("Account Access"))
            .listStyle(InsetGroupedListStyle())
            .navigationBarItems(trailing: Button(action: {
                addViewIsPresented = true
            }, label: {
                Image(systemName: "plus")
                    .imageScale(.large)
            }).sheet(isPresented: $addViewIsPresented) {
                MAAAddAccessView(isPresented: $addViewIsPresented)
            })
        }
    }
}

struct MAAListView_Previews: PreviewProvider {
    static var previews: some View {
        MAAListView()
    }
}
