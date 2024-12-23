import Foundation

enum Category: String, CaseIterable {
    case fashion = "Fashion"
    case food = "Food"
    case technology = "Technology"
    case retail = "Retail"
    case automobiles = "Automobiles"
    case others = "Others"
}

struct ScoreBreakdown {
    let carbonEmissions: Int
    let laborPractices: Int
    let environmentalImpact: Int
    let governance: Int
    let communityEngagement: Int
    let supplyChainTransparency: Int

}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let ethicalScore: Int
}

struct Company: Identifiable {
    let id = UUID()
    let name: String
    let category: Category
    let overallScore: Int // Ensure this line exists
    let scores: ScoreBreakdown
    let reasons: [Reason] // Ensure this line exists
    let ethicalProducts: [Product]
    let unethicalProducts: [Product]

    // Computed property to determine if the company is ethical
    var isEthical: Bool {
        overallScore >= 70
    }
}
