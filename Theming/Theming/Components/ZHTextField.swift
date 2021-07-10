
import SwiftUI

struct ZHTextField: View {
    @State var value: String = ""
    var title: String = "Title"
    
    var body: some View {
        VStack (spacing: 4) {
            HStack {
                Text(title)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.init(UIColor.secondaryLabel))
                Spacer()
            }
            
            Group {
                TextField("Enter \(title)", text: $value)
            }
            .padding(12)
            .overlay(RoundedRectangle(cornerRadius: 2.0).stroke(Color.init(UIColor.systemGray2), lineWidth: 1))
        }
    }
}

struct ZHTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZHTextField().previewLayout(.sizeThatFits)
    }
}
