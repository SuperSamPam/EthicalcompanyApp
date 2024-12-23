import SwiftUI

struct ProductDetailView: View {
    let product: ProductInfo

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(product.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Ethical Score: \(product.ethicalScore)")
                    .font(.title2)
                    .foregroundColor(product.ethicalScore >= 70 ? .green : .red)

                Text(product.description)
                    .font(.body)
                    .padding(.top)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(product.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color("AppGreen").edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
        .font(.custom("Poppins-Regular", size: 18))
    }
}
