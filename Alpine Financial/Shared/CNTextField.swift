
import SwiftUI

struct CNTextField: View {
    @State var value: String = ""
    var title: String = "Name"
    @State var assistiveText: String = "Lorem ipsum dolor sit amet"
    
    var body: some View {
        VStack (spacing: 4) {
            HStack {
                Text(title)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.init(UIColor.label))
                Spacer()
            }
            
            Group {
                TextField("Enter \(title)", text: $value)
            }
            .padding(16)
            .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color.init(UIColor.separator), lineWidth: 1))
            
            HStack {
                Text(assistiveText)
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(Color.init(UIColor.secondaryLabel))
                Spacer()
            }
        }
    }
}

struct CNTextField_Previews: PreviewProvider {
    static var previews: some View {
        CNTextField().previewLayout(.sizeThatFits)
    }
}
