
import SwiftUI

struct CNTextField: View {
    @State var value: String = ""
    var title: String = ""
    @State var assistiveText: String = ""
    
    var body: some View {
        VStack (spacing: 4) {
            HStack {
                Text(title)
                    .font(.body)
                    .fontWeight(.regular)
                Spacer()
            }
            
            Group {
                TextField("Enter \(title)", text: $value)
            }
            .padding(12)
            .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color.gray, lineWidth: 1))
            
            HStack {
                Text(assistiveText)
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
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
