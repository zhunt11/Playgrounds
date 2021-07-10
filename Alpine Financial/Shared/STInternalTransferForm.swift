
import SwiftUI

struct STInternalTransferForm: View {
    @State var amount: String = ""
    @State var shouldShowActionSheet: Bool = false
    
    struct Accounts {
        static let allAccounts = [
            "Checking ****4550",
            "Savings ****3229",
            "Vacation ****3227"
        ]
    }
    @State private var accounts = ""
    
    struct Frequency {
        static let allFrequencies = [
            "Weekly",
            "Weekly, Skip First",
            "Weekly, Skip Last",
            "Every Two Weeks",
            "Every Two Weeks Skip First",
            "Every Two Weeks Skip Last",
            "Twice a Month",
            "Monthly",
            "Quarterly",
            "Twice Per Year",
            "Annual"
        ]
    }
    @State private var frequencies = ""
    
    var body: some View {
        Form {
            Section(header: Text("From Account")) {
                Picker(selection: $accounts,
                       label: Text("From Account")) {
                    ForEach(Accounts.allAccounts, id: \.self) { account in
                            Text(account).tag(account)
                        }
                }
            }
            
            Section(header: Text("To Account")) {
                Picker(selection: $accounts,
                       label: Text("To Account")) {
                    ForEach(Accounts.allAccounts, id: \.self) { account in
                            Text(account).tag(account)
                        }
                }
            }
            
            Section(header: Text("Amount")) {
                TextField("Enter Amount", text: $amount)
            }
            
            Section(header: Text("Frequency")) {
                Picker(selection: $accounts,
                       label: Text("Select Frequency")) {
                    ForEach(Frequency.allFrequencies, id: \.self) { frequency in
                            Text(frequency).tag(frequency)
                        }
                }
            }
            
            Section(header: Text("First Transfer")) {
                HStack {
                    Text("05/27/2021")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .imageScale(.small)
                        .foregroundColor(Color.init(UIColor.systemFill))
                }
            }
            
            Section(header: Text("End Schedule")) {
                Button(action: {
                    shouldShowActionSheet = true
                }, label: {
                    HStack {
                        Text("On a Date")
                            .foregroundColor(Color.init(UIColor.label))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .foregroundColor(Color.init(UIColor.separator))
                    }
                })
                .actionSheet(isPresented: $shouldShowActionSheet) {
                            ActionSheet(title: Text("Select End Date"), buttons: [
                                            .default(Text("On a Date"), action: {
                                                // TODO: Implement Action
                                            }),
                                            .default(Text("No End Date"), action: {
                                                // TODO: Implement Action
                                            }),
                                            .cancel()])
                        }
            }
            
            Section(header: Text("End Date")) {
                HStack {
                    Text("5/27/2021")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .imageScale(.small)
                        .foregroundColor(Color.init(UIColor.systemFill))
                }
            }
        }
        .navigationBarTitle(Text("Schedule a Transfer"), displayMode: .inline)
        .listStyle(InsetGroupedListStyle())
        .navigationBarItems(trailing: Button(action: {
            
        }, label: {
            Text("Submit")
        }))
    }
}

struct STInternalTransferForm_Previews: PreviewProvider {
    static var previews: some View {
        STInternalTransferForm()
    }
}
