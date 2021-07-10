
import SwiftUI

struct STTypeSelection: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(
                        destination: STInternalTransferForm(),
                        label: {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Internal Transfer")
                                    .font(.body)
                                Text("Transfer money between your accounts at Apline Credit Untion.")
                                    .font(.footnote)
                                    .foregroundColor(Color.init(UIColor.secondaryLabel))
                            }
                        })
                    
                    NavigationLink(
                        destination: Text("Transfer to Another Institution"),
                        label: {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Transfer to Another Institution")
                                    .font(.body)
                                Text("Transfer money from one of your accounts to another financial institution.")
                                    .font(.footnote)
                                    .foregroundColor(Color.init(UIColor.secondaryLabel))
                            }
                        })
                    
                    NavigationLink(
                        destination: Text("Loan Payment"),
                        label: {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Loan Payment")
                                    .font(.body)
                                Text("Setup regular payments to one of your loans.")
                                    .font(.footnote)
                                    .foregroundColor(Color.init(UIColor.secondaryLabel))
                            }
                        })
                }
            }
            .navigationBarTitle(Text("Schedule a Transfer"), displayMode: .inline)
            .listStyle(InsetGroupedListStyle())
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Text("Cancel")
            }))
        }
    }
}

struct STTypeSelection_Previews: PreviewProvider {
    static var previews: some View {
        STTypeSelection()
    }
}
