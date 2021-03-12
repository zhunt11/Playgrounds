
import SwiftUI

struct DoubleLabelCell: View {
    var text: String
    var detailText: String?
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(text)
                .font(.body)
            if let temp = detailText {
                Text(temp)
                    .font(.footnote)
                    .foregroundColor(Color.init(UIColor.secondaryLabel))
            }
        }
    }
}

struct DoubleLabelCell_Previews: PreviewProvider {
    static var previews: some View {
        DoubleLabelCell(text: "Johnny", detailText: "****1234")
    }
}
