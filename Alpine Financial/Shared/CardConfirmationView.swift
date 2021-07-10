
import SwiftUI

struct CardConfirmationView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 24) {
//                    Spacer()
                    
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 48.0, height: 48.0)
                        .foregroundColor(Color(red:0.279, green:0.423, blue:0.902))
                    
                    VStack(alignment: .center, spacing: 8) {
                        Text("Your new card is ready!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.init(UIColor.label))
                            .multilineTextAlignment(.center)
                        
                        VStack(spacing: 16) {
                            Text("Your old card has been disabled. You will receive a new card in the mail shortly.")
                            
                            Text("In the meantime, you can add your new card to your wallet and begin using it!")
                        }
                        .font(.body)
                        .foregroundColor(Color.init(UIColor.secondaryLabel))
                        .multilineTextAlignment(.center)
                    }
                    
//                    Spacer()
                    
                    VStack(spacing: 16) {
                        CardView()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Add to Apple Wallet")
                                .font(.body)
                                .frame(width: geometry.size.width, height: 44)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                        })
                        
                        Button(action: {}, label: {
                            Text("No, thanks")
                                .font(.body)
                        })
                    }
                }
            }
            .padding(EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16))
            .navigationBarTitle(Text("Complete"), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Text("Cancel")
            }))
        }
    }
}

struct CardConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        CardConfirmationView()
    }
}
