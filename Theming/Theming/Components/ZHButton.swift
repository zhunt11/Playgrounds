
import SwiftUI

struct ZHButton: View {
//    var width: CGFloat
    var text: String
    
    var body: some View {
        Button(action: {}, label: {
            Text(text)
                .font(.body)
                .fontWeight(.semibold)
//                .frame(width: width, height: 44)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(4)
        })
    }
}

struct ZHButton_Previews: PreviewProvider {
    static var previews: some View {
        ZHButton(text: "Button").previewLayout(.sizeThatFits)
    }
}
