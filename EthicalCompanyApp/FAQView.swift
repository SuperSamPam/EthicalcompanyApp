//
//  FAQView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import SwiftUI

struct FAQView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Frequently Asked Questions")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                faqItem(question: "How do you determine the ethical scores?", answer: "We aggregate data from reputable NGOs, sustainability reports, and verified third-party audits. Our team regularly updates the database to reflect the latest available information.")
                
                faqItem(question: "How often is the data updated?", answer: "We aim to update our data quarterly or whenever significant new information becomes available. Premium subscribers may see more frequent updates.")
                
                faqItem(question: "Why are some companies not listed?", answer: "We focus on the top 100 most-shopped brands, but you can request a company via the 'Request a Company' feature. We'll consider adding it based on user interest and data availability.")
                
                faqItem(question: "Is my subscription auto-renewed?", answer: "Yes, subscriptions automatically renew unless canceled at least 24 hours before the end of the current period. Manage your subscription in your account settings.")
                
                faqItem(question: "How do I scan products?", answer: "Go to the Scan tab and press the Scan button. This will open the camera, allowing you to scan a product’s barcode. Once scanned, you’ll see its ethical score and description if available.")
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("FAQ")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func faqItem(question: String, answer: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(question)
                .font(.headline)
            Text(answer)
                .font(.body)
                .foregroundColor(.gray)
        }
    }
}