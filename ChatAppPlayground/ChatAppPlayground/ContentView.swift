
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environmentObject: ChatHistory
    @State private var messageText = ""
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { (geometry) in
                
                ZStack {
                    
                    ScrollView (.vertical, showsIndicators: true) {
                        
                        VStack (alignment: .center, spacing: 16) {
                            
                            Group {
                                Text("Welcome to Emerge Credit Union. A representative will be with you shortly.")
                                    
                                Text("Today")
                                    .fontWeight(.semibold)
                            }
                            .font(.callout)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            
                            VStack (spacing: 16) {
                                ForEach (environmentObject.messages, id: \.self) { message in
                                    HStack {
                                        if message.isSender {
                                            Spacer()
                                            ChatBubble(chat: message)
                                                .frame(maxWidth: (geometry.size.width/4)*3,
                                                       alignment: .trailing)
                                        }
                                        else {
                                            ChatBubble(chat: message)
                                                .frame(maxWidth: (geometry.size.width/4)*3,
                                                       alignment: .leading)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        }
                        .padding([.top, .leading, .trailing])
                    }
                    
                    VStack {
                        Spacer()
                        ChatTextField()
                            .frame(width: geometry.size.width, height: 50)
                    }
                }
            }
            .navigationBarTitle("Chat", displayMode: .inline)
            .navigationBarItems(trailing: Button("End Chat") {
                
            }.foregroundColor(.red))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ChatHistory())
    }
}
