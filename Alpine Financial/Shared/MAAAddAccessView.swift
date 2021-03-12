
import SwiftUI

struct MAAAddAccessView: View {
    @State var accountNumber: String = ""
    @State var lastName: String = ""
    @Binding var isPresented: Bool
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account Number")) {
                    TextField("Enter Account Number", text: $accountNumber)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Last Name")) {
                    TextField("Enter Last Name", text: $accountNumber)
                        .autocapitalization(.words)
                }
                
                Section {
                    NavigationLink("Terms & Conditions",
                                   destination: Text("Terms & Conditions"))
                }
            }
            .navigationBarTitle("Add Access", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                isPresented = false
            }, label: {
                Text("Cancel")
            }), trailing: Button(action: {
                showAlert = true
            }, label: {
                Text("Submit")
                    .fontWeight(.semibold)
            })).alert(isPresented: $showAlert, content: {
                Alert(title: Text("Terms & Conditions"),
                      message: Text("Do you agree to the Terms & Conditions?"),
                      primaryButton: .default(Text("I Agree"),
                                              action: {
                                                
                      }),
                      secondaryButton: .cancel())
            })
        }
    }
}

struct MAAAddAccessView_Previews: PreviewProvider {
    static var previews: some View {
        MAAAddAccessView(isPresented: .constant(true))
    }
}
