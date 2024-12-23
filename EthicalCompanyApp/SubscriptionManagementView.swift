import SwiftUI

struct SubscriptionManagementView: View {
    @EnvironmentObject var subscriptionManager: SubscriptionManager

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Subscription Management")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("""
This app offers premium features, including:
- Detailed reasonings for company scores
- Most and least ethical products for each company
- Product scanning with full descriptions

Currently, you are \(subscriptionManager.isSubscribed ? "subscribed" : "not subscribed") to the premium service.
""")
                    .font(.body)

                if subscriptionManager.isSubscribed {
                    Text("You have full access to all premium features. Thank you for supporting our mission!")
                        .font(.body)
                        .foregroundColor(.green)
                } else {
                    Text("You do not have access to premium features. Consider subscribing to unlock the full experience.")
                        .font(.body)
                        .foregroundColor(.red)

                    Button(action: {
                        subscriptionManager.isSubscribed = true
                    }) {
                        Text("Subscribe Now")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue.cornerRadius(8))
                    }
                }

                Text("""
Subscription Details:
- Monthly subscription: $2.99
- Yearly subscription: $29.99

Subscriptions support continuous updates, new company data, and improved scanning features. You can cancel anytime in your account settings.
""")
                    .font(.footnote)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Subscription Management")
        .navigationBarTitleDisplayMode(.inline)
    }
}
