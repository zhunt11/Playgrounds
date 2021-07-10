
import SwiftUI

struct CardDetailView: View {
    @State var isCardToggleOn = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(UIColor.systemGroupedBackground)
                
                VStack {
                    CardView().frame(width: 350, height: 224, alignment:.leading)
                    
                    List {
                        Section(header: Text("Card Status").font(.title3).fontWeight(.semibold).textCase(.none).foregroundColor(Color.init(UIColor.label))) {
                            HStack {
                                Toggle("Your card is active and ready to use.", isOn: $isCardToggleOn)
                            }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing:0))
                        }

                        Section(header: Text("Controls").font(.title3).fontWeight(.semibold).textCase(.none).foregroundColor(Color.init(UIColor.label))) {

                            NavigationLink(
                                destination: Text("Spending Limits"),
                                label: {
                                    HStack {
                                        Image(systemName: "dollarsign.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Spending Limits")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Spending Limits"),
                                label: {
                                    HStack {
                                        Image(systemName: "building.2.crop.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Transaction Types")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Merchant Types"),
                                label: {
                                    HStack {
                                        Image(systemName: "cart.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Merchant Types")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Time Controls"),
                                label: {
                                    HStack {
                                        Image(systemName: "clock.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Time Controls")
                                    }
                                })

                            NavigationLink(
                                destination: LocationControlsView(),
                                label: {
                                    HStack {
                                        Image(systemName: "location.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Locations")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Alerts"),
                                label: {
                                    HStack {
                                        Image(systemName: "bell.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Alerts")
                                    }
                                })
                        }

                        Section(header: Text("Card Services").font(.title3).fontWeight(.semibold).textCase(.none).foregroundColor(Color.init(UIColor.label))) {

                            NavigationLink(
                                destination: Text("Replace Card"),
                                label: {
                                    HStack {
                                        Image(systemName: "creditcard.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Replace Card")
                                    }
                                })

                            NavigationLink(
                                destination: ChangePinView(),
                                label: {
                                    HStack {
                                        Image(systemName: "asterisk.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Change Pin")
                                    }
                                })

                            NavigationLink(
                                destination: Text("ATM Withdrawal Limit"),
                                label: {
                                    HStack {
                                        Image(systemName: "dollarsign.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("ATM Withdrawal Limit")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Card Rewards"),
                                label: {
                                    HStack {
                                        Image(systemName: "star.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Card Rewards")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Balance Transfer"),
                                label: {
                                    HStack {
                                        Image(systemName: "arrow.left.arrow.right.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Balance Transfer")
                                    }
                                })

                            NavigationLink(
                                destination: Text("Gift Cards"),
                                label: {
                                    HStack {
                                        Image(systemName: "gift.circle.fill")
                                            .imageScale(.large)
                                            .foregroundColor(.blue)
                                        Text("Gift Cards")
                                    }
                                })

                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                }
                .padding(.top, 24)
            }
            .navigationBarTitle(Text("Checking Debit Card"), displayMode: .inline)
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
