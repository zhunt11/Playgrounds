
import SwiftUI

struct SingleLabelRow: View {
    var text: String
    
    var body: some View {
        ZStack {
            HStack {
                Text(text)
                Spacer()
            }
        }
    }
}

struct SingleLabelRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleLabelRow(text: "Hello, World!").previewLayout(.fixed(width: 375, height: 44))
    }
}
