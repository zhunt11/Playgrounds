import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
//            GeometryReader { reader in
                ScrollView {
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
                    .padding()
//                    .frame(width: reader.size.width, height: 350, alignment:.center)
                    .background(Color.init(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                    .shadow(color: Color.init(UIColor.systemGray2), radius: 8, x: 0, y: 4)
                }
                
//                .background(Color.red)
//            }
            .navigationBarTitle(Text("Login"), displayMode: .inline)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
