
import SwiftUI

struct ChatBubble: View {
    var chat: ChatMessage
    
    var body: some View {
        VStack (alignment: alignmentForChat(chat), spacing: 2) {
            Text(chat.messageDate)
                .font(.caption)
                .foregroundColor(.gray)
            
            Text(chat.messageText)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .font(.body)
                .foregroundColor(.white)
                .background(fillClorForChat(chat))
                .cornerRadius(8, corners: cornersForChat(chat))
            
            Text(chat.messageStatus)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

private func cornersForChat(_ chat: ChatMessage) -> UIRectCorner {
    var corners: UIRectCorner
    if chat.isSender {
        corners = [.topLeft, .topRight, .bottomLeft]
    } else {
        corners = [.topLeft, .topRight, .bottomRight]
    }
    
    return corners
}

private func alignmentForChat(_ chat: ChatMessage) -> HorizontalAlignment {
    var alignment: HorizontalAlignment
    if chat.isSender {
        alignment = .trailing
    } else {
        alignment = .leading
    }
    
    return alignment
}

private func fillClorForChat(_ chat: ChatMessage) -> Color {
    var fillColor: Color
    if (chat.isSender) {
        fillColor = .blue
    }
    else {
        fillColor = .gray
    }
    
    return fillColor
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(chat: ChatMessage(id: 0, messageDate: "Today", messageStatus: "Delivered", messageText: "Testing", isSender: false))
    }
}
