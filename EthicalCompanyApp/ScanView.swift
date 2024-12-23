import SwiftUI

struct ScanView: View {
    @Binding var showMenu: Bool
    @EnvironmentObject var subscriptionManager: SubscriptionManager

    @State private var productCode: String = ""
    @State private var scannedProduct: ProductInfo? = nil
    @State private var showProductDetail = false
    @State private var showCamera = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Scan a Product")
                .font(.largeTitle)
                .fontWeight(.bold)

            TextField("Enter Product Code", text: $productCode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button(action: {
                // Automatically open camera when scan button clicked
                showCamera = true
            }) {
                Text("Scan")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(8))
            }

            if let product = scannedProduct {
                Text("Found: \(product.name) - Score: \(product.ethicalScore)")
                    .padding()

                Button(action: {
                    showProductDetail = true
                }) {
                    Text("View Details")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green.cornerRadius(8))
                }
                .sheet(isPresented: $showProductDetail) {
                    ProductDetailView(product: product)
                }
            } else {
                Text("No product scanned yet.")
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding()
        .sheet(isPresented: $showCamera, onDismiss: {
            // Simulate that after camera closes, we got the product code
            // In a real app, you'd set productCode = detectedCode from camera
            // For now, let's just call scanProduct with whatever code was typed.
            scanProduct()
        }) {
            CameraView()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Back") {
                    // Return to main menu
                    showMenu = true
                }
            }
        }
        .navigationTitle("Scan")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func scanProduct() {
        if let product = ProductData.products[productCode] {
            scannedProduct = product
        } else {
            scannedProduct = nil
        }
    }
}
