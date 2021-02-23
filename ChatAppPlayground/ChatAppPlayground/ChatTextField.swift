
import SwiftUI

struct ChatTextField: View {
    @EnvironmentObject var environmentObject: ChatHistory
    @State private var messageText = ""
    
    var body: some View {
        ZStack (alignment: .center) {
            Color.white.edgesIgnoringSafeArea(.all)
            
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 0.5))
                    .padding(EdgeInsets(top: 4.0,
                                        leading: 16.0,
                                        bottom: 4.0,
                                        trailing: 16.0))
                
                HStack {
                    TextField("Type a message", text: $messageText)
                    TextField("Type a message", text: $messageText) { (true) in
                        
                    } onCommit: {
                        
                    }

                    
                    Button(action: {
                        let message = ChatMessage(id: 0, messageDate: "9:24 AM", messageStatus: "Delivered", messageText: messageText, isSender: false)
                        environmentObject.messages.append(message)
                        messageText = ""
                    }) {
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.title)
                    }
                }
                .padding(EdgeInsets(top: 0.0,
                                    leading: 24.0,
                                    bottom: 0.0,
                                    trailing: 24.0))
            }
        }
    }
}

struct ChatTextField_Previews: PreviewProvider {
    static var previews: some View {
        ChatTextField()
            .previewLayout(.fixed(width: 375, height: 50))
    }
}
