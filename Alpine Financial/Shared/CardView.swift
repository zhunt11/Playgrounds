
import SwiftUI

struct CardView: View {
    static let gradientStart = Color(red:0.448, green:0.559, blue:0.953)
    static let gradientEnd = Color(red:0.279, green:0.423, blue:0.902)
    
    var body: some View {
        GeometryReader { reader in
            Rectangle()
                .fill(LinearGradient(
                    gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                    startPoint: .topTrailing,
                    endPoint: .bottomLeading
                  ))
                .frame(width: reader.size.width, height: 224)
                .cornerRadius(16.0)
            
            ZStack {
                VStack(alignment: .leading, spacing: 40) {
                    Text("Checking Debit")
                        .font(.system(size: 24, weight: .regular, design: .monospaced))
                        .foregroundColor(.white)
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text("**** **** **** 4550")
                            .font(.system(size: 24, weight: .regular, design: .monospaced))
                            .foregroundColor(.white)
                        Text("Exp 03/24")
                            .font(.system(size: 16, weight: .regular, design: .monospaced))
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Text("Connor D Sawyer")
                            .font(.system(size: 16, weight: .regular, design: .monospaced))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Debit")
                            .font(.system(size: 16, weight: .regular, design: .monospaced))
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
