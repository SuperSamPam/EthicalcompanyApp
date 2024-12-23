import SwiftUI

struct MainView: View {
    @Binding var showMenu: Bool

    var body: some View {
        VStack(spacing: 40) {
            Spacer()

            Text("Welcome to the Ethical Company App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Text("Discover how ethical your favorite brands and products really are.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button(action: {
                showMenu = false
            }) {
                Text("Explore Companies")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(8))
                    .shadow(radius: 5)
            }

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}
