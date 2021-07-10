
import SwiftUI

struct ChangePinView: View {
    @ObservedObject var currentPin = TextFieldManager()
    @ObservedObject var newPin = TextFieldManager()
    @ObservedObject var confirmedPin = TextFieldManager()
    @State var isValid: Bool = false
    @State var showAlert: Bool = false
    @State var footer: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            List {
                Section(header: Text("Current Pin")) {
                    SecureField("Enter Pin", text: $currentPin.userInput)
                        .onChange(of: currentPin.userInput) { newValue in
                            isValid = self.isFormValid()
                        }
                        .frame(height: 44)
                        .disabled(true)
                }
                
                Section(header: Text("New 4-Digit Pin"), footer: Text(footer)) {
                    SecureField("Enter New Pin", text: $newPin.userInput)
                        .onChange(of: newPin.userInput) { newValue in
                            isValid = self.isFormValid()
                        }
                        .frame(height: 44)

                    SecureField("Re-Enter New Pin", text: $confirmedPin.userInput)
                        .onChange(of: confirmedPin.userInput) { newValue in
                            isValid = self.isFormValid()
                        }
                        .frame(height: 44)
                }
            }
            .keyboardType(.numberPad)
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Change Pin"))
            .navigationBarItems(trailing: Button(action: {
                if newPin.userInput == confirmedPin.userInput {
                    
                }
                else {
                    showAlert = true
                }
            }, label: {
                Text("Submit")
            }).disabled(!isValid))
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Pin Mismatch"), message: Text("Your new pin does not match. Please re-enter your new pin."), dismissButton: Alert.Button.default(Text("OK")))
            })
        }
    }
    
    private func isFormValid() -> Bool {
        var isValid = true
        
        if currentPin.userInput.isEmpty || currentPin.userInput.count < 4 {
            isValid = false
        }
        
        if newPin.userInput.isEmpty || newPin.userInput.count < 4 {
            isValid = false
        }
        
        if confirmedPin.userInput.isEmpty || confirmedPin.userInput.count < 4 {
            isValid = false
        }
        
        return isValid
    }
}
struct ChangePinView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePinView()
    }
}
