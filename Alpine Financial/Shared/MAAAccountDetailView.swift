
import SwiftUI

struct MAAAccountDetailView: View {
    var account: MAAAccount
    @State var shouldShowActionSheet: Bool = false
    
    var body: some View {
        List {
            Section {
                SplitLabelCell(text: "Name",
                               detailText: account.name)
                SplitLabelCell(text: "User/Member",
                               detailText: account.accountNumber)
                SplitLabelCell(text: "Access",
                               detailText: account.accessLevel)
            }
            
            Section {
                Button(action: {
                    shouldShowActionSheet = true
                }, label: {
                    Text("Remove")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.init(UIColor.systemRed))
                })
                .actionSheet(isPresented: $shouldShowActionSheet) {
                            ActionSheet(
                                title: Text("Remove Account Access"),
                                message: Text("Are you sure you want to remove \(account.name), \(account.accountNumber)? This member will no longer be able to access your account."),
                                buttons: [.destructive(Text("Yes, Remove"), action: {
                                    // TODO:
                                }), .cancel()]
                            )
                        }
            }
        }
        .navigationBarTitle(Text(account.name), displayMode: .inline)
        .listStyle(InsetGroupedListStyle())
    }
}

struct MAAAccountDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MAAAccountDetailView(account: maaAccounts[0])
    }
}
