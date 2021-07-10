
import SwiftUI

struct LoginFormView: View {
    var body: some View {
        GeometryReader { reader in
            VStack(spacing: 24) {
                HStack {
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                VStack(spacing: 8) {
                    ZHTextField(title: "Username")
                    ZHTextField(title: "Password")
                }
                
                VStack(spacing: 16) {
                    ZHButton(text: "Login")
                    
                    Button(action: {},label: {
                        Text("Trouble Logging In?")
                            .font(.callout)
                            .fontWeight(.semibold)
                    })
                }
            }
        }
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
