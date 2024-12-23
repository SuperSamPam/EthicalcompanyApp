//
//  AdditionalData.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import Foundation

struct AdditionalData {
    static let companies: [Company] = [
        Company(
            name: "Whole Foods",
            category: .food,
            overallScore: 88,
            scores: ScoreBreakdown(
                carbonEmissions: 85,
                laborPractices: 80,
                environmentalImpact: 90,
                governance: 90,
                communityEngagement: 90,
                supplyChainTransparency: 85
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Whole Foods sources locally to reduce transport emissions, invests in green energy, and publishes sustainability measures.",
                    sources: [
                        (name: "Whole Foods Sustainability", url: "https://www.wholefoodsmarket.com/sustainability")
                    ]
                )
                // Add more Reason(...) entries here as needed
            ],
            ethicalProducts: [
                Product(
                    name: "Organic Local Kale",
                    description: "Certified organic, locally sourced to minimize carbon footprint.",
                    ethicalScore: 90
                )
            ],
            unethicalProducts: [
                Product(
                    name: "Imported Non-Organic Berries",
                    description: "High transport emissions, less transparency on pesticide use.",
                    ethicalScore: 65
                )
            ]
        ),
        Company(
            name: "Trader Joe’s",
            category: .food,
            overallScore: 75,
            scores: ScoreBreakdown(
                carbonEmissions: 70,
                laborPractices: 75,
                environmentalImpact: 80,
                governance: 70,
                communityEngagement: 80,
                supplyChainTransparency: 65
            ),
            reasons: [
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Trader Joe’s reduces plastics, increases organic options, and engages in basic sustainability improvements.",
                    sources: [
                        (name: "Trader Joe’s Packaging Info", url: "https://www.traderjoes.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(
                    name: "Fair Trade Organic Coffee",
                    description: "Certified fair trade and organic, supporting sustainable farming.",
                    ethicalScore: 85
                )
            ],
            unethicalProducts: [
                Product(
                    name: "Excessive Plastic-Wrapped Produce",
                    description: "Unnecessary single-use plastic packaging.",
                    ethicalScore: 60
                )
            ]
        )
        // Add more companies here following the same pattern
    ]
}
