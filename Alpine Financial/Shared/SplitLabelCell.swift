
import SwiftUI

struct SplitLabelCell: View {
    var text: String = "Name"
    var detailText: String = "Johnny"
    
    var body: some View {
        HStack {
            Text(text)
                .fontWeight(.semibold)
            Spacer()
            Text(detailText)
        }
    }
}

struct SplitLabelCell_Previews: PreviewProvider {
    static var previews: some View {
        SplitLabelCell()
    }
}
