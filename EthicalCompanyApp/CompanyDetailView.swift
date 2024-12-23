import SwiftUI

struct CompanyDetailView: View {
    let company: Company

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(company.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                // If company is not ethical, show alternatives
                if !company.isEthical {
                    Text("This company scores below 70. Consider these alternatives:")
                        .font(.headline)
                        .padding(.top)

                    ForEach(betterAlternatives, id: \.id) { alt in
                        HStack {
                            Text(alt.name)
                            Spacer()
                            Text("\(alt.overallScore)")
                                .foregroundColor(.green)
                        }
                        .padding(.vertical, 4)
                    }
                    .padding(.horizontal)
                }

                scoreView

                productsSection(title: "Most Ethical Products", products: company.ethicalProducts)
                productsSection(title: "Least Ethical Products", products: company.unethicalProducts)
                    .padding()

            }
            .padding()
        }
        .navigationTitle(company.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    // Compute better alternatives
    var betterAlternatives: [Company] {
        let allCompanies = SampleData.companies
        // Only show companies in the same category with scores >= 70
        return allCompanies.filter { $0.category == company.category && $0.overallScore >= 70 }
    }

    // Show each metric category, score, and link to details
    private var scoreView: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Overall Score: \(company.overallScore)")
                .font(.title2)
                .foregroundColor(company.isEthical ? .green : .red)

            metricLink(category: "Carbon Emissions", score: company.scores.carbonEmissions)
            metricLink(category: "Labor Practices", score: company.scores.laborPractices)
            metricLink(category: "Environmental Impact", score: company.scores.environmentalImpact)
            metricLink(category: "Governance", score: company.scores.governance)
            metricLink(category: "Community Engagement", score: company.scores.communityEngagement)
            metricLink(category: "Supply Chain Transparency", score: company.scores.supplyChainTransparency)
        }
    }

    // A helper function to navigate to MetricDetailView for each metric
    private func metricLink(category: String, score: Int) -> some View {
        NavigationLink(destination: MetricDetailView(metricName: category, reason: reasonForMetric(category))) {
            HStack {
                Text(category)
                    .font(.subheadline)
                Spacer()
                Text("\(score)")
                    .foregroundColor(score >= 70 ? .green : .red)
                    .font(.subheadline)
            }
            .padding(.vertical, 2)
        }
    }

    // Find the Reason object that matches the category name
    private func reasonForMetric(_ metricName: String) -> Reason? {
        return company.reasons.first { $0.categoryName == metricName }
    }

    // Shows products sections
    private func productsSection(title: String, products: [Product]) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)

            ForEach(products) { product in
                VStack(alignment: .leading, spacing: 5) {
                    Text(product.name)
                        .font(.subheadline)
                    Text(product.description)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Text("Product Score: \(product.ethicalScore)")
                        .font(.footnote)
                        .foregroundColor(product.ethicalScore >= 70 ? .green : .red)
                }
                .padding(.vertical, 5)
            }
        }
    }
}
