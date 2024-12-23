//
//  AdditionalData2.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import Foundation

struct AdditionalData2 {
    static let companies: [Company] = [
        Company(
            name: "Aldi",
            category: .food,
            overallScore: 80,
            scores: ScoreBreakdown(
                carbonEmissions: 85,
                laborPractices: 75,
                environmentalImpact: 85,
                governance: 80,
                communityEngagement: 80,
                supplyChainTransparency: 75
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Aldi invests in green refrigeration, solar panels on some stores, and efficient logistics routes.",
                    sources: [
                        (name: "Aldi Corporate Responsibility", url: "https://corporate.aldi.us/en/corporate-responsibility/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Above-average retail wages, decent benefits, training programs, stable employment.",
                    sources: [
                        (name: "Aldi Careers", url: "https://careers.aldi.us/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(
                    name: "Organic Fair Trade Bananas",
                    description: "Fair trade certified, reduced chemical use, supporting farmer livelihoods.",
                    ethicalScore: 90
                )
            ],
            unethicalProducts: [
                Product(
                    name: "Imported Conventional Avocados",
                    description: "Long supply chain, potential high water usage, less transparency.",
                    ethicalScore: 65
                )
            ]
        ),
        Company(
            name: "Lowe’s",
            category: .retail,
            overallScore: 72,
            scores: ScoreBreakdown(
                carbonEmissions: 65,
                laborPractices: 70,
                environmentalImpact: 75,
                governance: 80,
                communityEngagement: 80,
                supplyChainTransparency: 60
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Lowe’s implements energy-efficient lighting and some solar installations, improving logistics efficiency.",
                    sources: [
                        (name: "Lowe’s Sustainability", url: "https://corporate.lowes.com/responsibility")
                    ]
                )
            ],
            ethicalProducts: [
                Product(
                    name: "FSC-Certified Lumber",
                    description: "Responsibly sourced wood supporting sustainable forests.",
                    ethicalScore: 85
                )
            ],
            unethicalProducts: [
                Product(
                    name: "Inexpensive PVC Pipes",
                    description: "Potentially hazardous materials, no transparency on chemical safety.",
                    ethicalScore: 55
                )
            ]
        )
        // Add more companies here if you like, following the same pattern
    ]
}