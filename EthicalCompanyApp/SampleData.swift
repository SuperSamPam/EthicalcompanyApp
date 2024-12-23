import Foundation

struct SampleData {
    static let companies: [Company] = [
        // Fashion
        Company(
            name: "Nike",
            category: .fashion,
            overallScore: 68,
            scores: ScoreBreakdown(
                carbonEmissions: 70,
                laborPractices: 65,
                environmentalImpact: 75,
                governance: 70,
                communityEngagement: 80,
                supplyChainTransparency: 50
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Reducing CO₂ through renewable energy in distribution centers.",
                    sources: [
                        (name: "Nike Impact Report", url: "https://purpose.nike.com/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Improved codes of conduct and audits, but occasional subcontractor issues.",
                    sources: [
                        (name: "Nike Sustainable Innovation", url: "https://purpose.nike.com/sustainable-innovation")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Incorporates recycled materials, prioritizes circular design, transparent recycling rates.",
                    sources: [
                        (name: "Nike Sustainability Report", url: "https://purpose.nike.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Annual sustainability reports, some third-party verification.",
                    sources: [
                        (name: "Nike ESG Governance", url: "https://purpose.nike.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Invests in sports programs, youth education, and local initiatives.",
                    sources: [
                        (name: "Nike Community Impact", url: "https://purpose.nike.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Public factory lists, detail on conditions could improve.",
                    sources: [
                        (name: "Nike Factory List", url: "https://purpose.nike.com/sustainable-innovation")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Nike Space Hippie Shoes", description: "Made from recycled materials, reduced carbon footprint.", ethicalScore: 90)
            ],
            unethicalProducts: [
                Product(name: "Conventional Polyester T-Shirt", description: "Uses virgin polyester, unclear sourcing.", ethicalScore: 60)
            ]
        ),

        // Food
        Company(
            name: "McDonald’s",
            category: .food,
            overallScore: 58,
            scores: ScoreBreakdown(
                carbonEmissions: 55,
                laborPractices: 60,
                environmentalImpact: 65,
                governance: 60,
                communityEngagement: 80,
                supplyChainTransparency: 30
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Sustainable sourcing steps, but beef supply contributes significant GHG.",
                    sources: [
                        (name: "McDonald's Purpose & Impact", url: "https://corporate.mcdonalds.com/corpmcd/en-us/our-purpose-and-impact.html")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Minimum wage start, training available, not always a living wage globally.",
                    sources: [
                        (name: "McDonald's Workforce Initiatives", url: "https://corporate.mcdonalds.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Paper straws, sustainable packaging, improving coffee/palm oil sourcing.",
                    sources: [
                        (name: "McDonald's Sustainability", url: "https://corporate.mcdonalds.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Public CSR goals, activists want more robust independent oversight.",
                    sources: [
                        (name: "McDonald's Governance", url: "https://corporate.mcdonalds.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Ronald McDonald House Charities, local fundraising, community programs.",
                    sources: [
                        (name: "RMHC", url: "https://www.rmhc.org/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Limited supplier details, mainly general commitments.",
                    sources: [
                        (name: "McDonald's Supply Chain Info", url: "https://corporate.mcdonalds.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Organic Apple Slices", description: "Sourced from sustainable farms, reduced pesticides.", ethicalScore: 85)
            ],
            unethicalProducts: [
                Product(name: "Conventional Beef Patty", description: "High emissions, limited rancher standards.", ethicalScore: 50)
            ]
        ),
        Company(
            name: "Kroger",
            category: .food,
            overallScore: 65,
            scores: ScoreBreakdown(
                carbonEmissions: 60,
                laborPractices: 65,
                environmentalImpact: 70,
                governance: 65,
                communityEngagement: 80,
                supplyChainTransparency: 50
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Some renewables, efficiency measures, large refrigerant/logistics footprint.",
                    sources: [
                        (name: "Kroger Sustainability", url: "https://www.thekrogerco.com/sustainability/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Union presence, offers benefits, occasional wage disputes.",
                    sources: [
                        (name: "Kroger Workforce", url: "https://www.thekrogerco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Food waste reduction, composting, improved recycling rates.",
                    sources: [
                        (name: "Kroger Environmental", url: "https://www.thekrogerco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Publishes sustainability reports, some targets not fully verified.",
                    sources: [
                        (name: "Kroger Governance", url: "https://www.thekrogerco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Significant hunger relief, local food bank support.",
                    sources: [
                        (name: "Kroger Community", url: "https://www.thekrogerco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Limited supplier info, plans to improve traceability.",
                    sources: [
                        (name: "Kroger Supply Chain", url: "https://www.thekrogerco.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Simple Truth Organic Produce", description: "Certified organic, locally sourced, fewer pesticides.", ethicalScore: 85)
            ],
            unethicalProducts: [
                Product(name: "Store-Brand Meat (Unclear Sourcing)", description: "Limited info on farm conditions.", ethicalScore: 50)
            ]
        ),
        Company(
            name: "Starbucks",
            category: .food,
            overallScore: 78,
            scores: ScoreBreakdown(
                carbonEmissions: 80,
                laborPractices: 70,
                environmentalImpact: 85,
                governance: 80,
                communityEngagement: 90,
                supplyChainTransparency: 65
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Renewable energy for stores, aiming for carbon neutrality.",
                    sources: [
                        (name: "Starbucks Responsibility", url: "https://www.starbucks.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Healthcare, tuition assistance, some unionization efforts by staff.",
                    sources: [
                        (name: "Starbucks Workforce", url: "https://www.starbucks.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "C.A.F.E. Practices coffee, reusable cups, reducing single-use plastics.",
                    sources: [
                        (name: "Starbucks Environmental", url: "https://www.starbucks.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Transparent reporting, some third-party audits.",
                    sources: [
                        (name: "Starbucks ESG Reports", url: "https://www.starbucks.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Invests in coffee communities, youth training, local grants.",
                    sources: [
                        (name: "Starbucks Community", url: "https://www.starbucks.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Coffee sourcing standards shared, some supply chain gaps remain.",
                    sources: [
                        (name: "Starbucks Supply Chain", url: "https://www.starbucks.com/responsibility")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Single-Origin Ethically Sourced Coffee Beans", description: "Traceable farms meeting C.A.F.E. Practices.", ethicalScore: 90)
            ],
            unethicalProducts: [
                Product(name: "Single-Use Plastic Cup (Pre-initiative)", description: "High environmental impact before reduction measures.", ethicalScore: 60)
            ]
        ),

        // Technology
        Company(
            name: "Apple",
            category: .technology,
            overallScore: 82,
            scores: ScoreBreakdown(
                carbonEmissions: 90,
                laborPractices: 75,
                environmentalImpact: 85,
                governance: 90,
                communityEngagement: 80,
                supplyChainTransparency: 75
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "100% renewables in operations, pushing suppliers to adopt clean energy.",
                    sources: [
                        (name: "Apple Environment", url: "https://www.apple.com/environment/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Supplier audits, some improvements, but occasional factory issues.",
                    sources: [
                        (name: "Apple Supplier Responsibility", url: "https://www.apple.com/supplier-responsibility/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Focus on recycling, reducing e-waste, designing products for longevity.",
                    sources: [
                        (name: "Apple Environmental Progress", url: "https://www.apple.com/environment/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Strong ESG oversight, annual environmental reports, independent assessments.",
                    sources: [
                        (name: "Apple Governance", url: "https://investor.apple.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Supports education, accessibility, and community investments worldwide.",
                    sources: [
                        (name: "Apple Community Initiatives", url: "https://www.apple.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Annual supplier lists and audits, though some data limited.",
                    sources: [
                        (name: "Apple Supplier List", url: "https://www.apple.com/supplier-responsibility/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "iPhone with Recycled Aluminum Enclosure", description: "Uses recycled metals, reducing mining impact.", ethicalScore: 90)
            ],
            unethicalProducts: [
                Product(name: "Older iPhone Models (Pre-Sustainability)", description: "Less recycled content, fewer transparent sourcing measures.", ethicalScore: 65)
            ]
        ),

        // Retail
        Company(
            name: "Walmart",
            category: .retail,
            overallScore: 62,
            scores: ScoreBreakdown(
                carbonEmissions: 65,
                laborPractices: 60,
                environmentalImpact: 65,
                governance: 70,
                communityEngagement: 75,
                supplyChainTransparency: 40
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Project Gigaton aims to reduce emissions, large global ops remain.",
                    sources: [
                        (name: "Walmart ESG Report", url: "https://corporate.walmart.com/esgreport")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Wage improvements in some markets, part-time hours concerns remain.",
                    sources: [
                        (name: "Walmart Workforce", url: "https://corporate.walmart.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Reducing plastic, promoting recycling, large footprint to address.",
                    sources: [
                        (name: "Walmart Environmental", url: "https://corporate.walmart.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Board committees on sustainability, publishes ESG reports.",
                    sources: [
                        (name: "Walmart Governance", url: "https://corporate.walmart.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Disaster relief, local philanthropy, community grants.",
                    sources: [
                        (name: "Walmart Community", url: "https://corporate.walmart.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Complex chain, limited public supplier details.",
                    sources: [
                        (name: "Walmart Supply Chain", url: "https://corporate.walmart.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Sustainably Sourced Coffee (Rainforest Alliance)", description: "Certified coffee reducing environmental harm.", ethicalScore: 80)
            ],
            unethicalProducts: [
                Product(name: "Fast Fashion Apparel", description: "Limited supplier traceability, potential labor and environmental issues.", ethicalScore: 50)
            ]
        ),
        Company(
            name: "Amazon",
            category: .retail,
            overallScore: 55,
            scores: ScoreBreakdown(
                carbonEmissions: 70,
                laborPractices: 45,
                environmentalImpact: 60,
                governance: 65,
                communityEngagement: 50,
                supplyChainTransparency: 40
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Investing in renewables, electric vans, still huge logistics footprint.",
                    sources: [
                        (name: "Amazon Sustainability", url: "https://sustainability.aboutamazon.com/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Warehouse labor issues, anti-union stance, but wages increased.",
                    sources: [
                        (name: "Amazon Labor Practices", url: "https://sustainability.aboutamazon.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Reducing packaging waste, expanding recycling, large shipping emissions.",
                    sources: [
                        (name: "Amazon Environmental", url: "https://sustainability.aboutamazon.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Publishes sustainability reports, critics want more oversight.",
                    sources: [
                        (name: "Amazon ESG", url: "https://sustainability.aboutamazon.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "AmazonSmile, local grants, variable community impact.",
                    sources: [
                        (name: "Amazon Community", url: "https://sustainability.aboutamazon.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Huge marketplace, limited data on third-party sellers.",
                    sources: [
                        (name: "Amazon Supply Chain", url: "https://sustainability.aboutamazon.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Amazon-Branded Recycled Packaging Materials", description: "Certified recycled paper, reduced plastic mailers.", ethicalScore: 80)
            ],
            unethicalProducts: [
                Product(name: "Cheap Electronics from Unverified Sellers", description: "No labor or environmental standards info.", ethicalScore: 40)
            ]
        ),
        Company(
            name: "Target",
            category: .retail,
            overallScore: 72,
            scores: ScoreBreakdown(
                carbonEmissions: 75,
                laborPractices: 70,
                environmentalImpact: 75,
                governance: 80,
                communityEngagement: 85,
                supplyChainTransparency: 50
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Renewable energy in stores, LED lighting, efficient logistics.",
                    sources: [
                        (name: "Target Sustainability & ESG", url: "https://corporate.target.com/sustainability-esg")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Higher starting wages, benefits, some scheduling concerns.",
                    sources: [
                        (name: "Target Workforce", url: "https://corporate.target.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Sustainable packaging, eco-friendly brand partnerships.",
                    sources: [
                        (name: "Target Environmental", url: "https://corporate.target.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Transparent ESG goals, board oversight.",
                    sources: [
                        (name: "Target Governance", url: "https://corporate.target.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Grants to schools, nonprofits, disaster relief.",
                    sources: [
                        (name: "Target Community", url: "https://corporate.target.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Some supplier disclosures, improving visibility.",
                    sources: [
                        (name: "Target Supply Chain", url: "https://corporate.target.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Organic Cotton Bedsheets (GOTS-certified)", description: "Sustainably grown cotton, fair labor certified.", ethicalScore: 85)
            ],
            unethicalProducts: [
                Product(name: "Cheap Synthetic Clothing Items", description: "Limited traceability, synthetic materials, unknown conditions.", ethicalScore: 55)
            ]
        ),
        Company(
            name: "Costco",
            category: .retail,
            overallScore: 68,
            scores: ScoreBreakdown(
                carbonEmissions: 70,
                laborPractices: 80,
                environmentalImpact: 65,
                governance: 70,
                communityEngagement: 75,
                supplyChainTransparency: 50
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Efficient logistics, some solar installations.",
                    sources: [
                        (name: "Costco Sustainability", url: "https://www.costco.com/sustainability-responsibility.html")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Above-average wages/benefits in retail sector.",
                    sources: [
                        (name: "Costco Workforce", url: "https://www.costco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Some sustainable sourcing, packaging improvements ongoing.",
                    sources: [
                        (name: "Costco Environmental", url: "https://www.costco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Sustainability commitments, some third-party audits.",
                    sources: [
                        (name: "Costco Governance", url: "https://www.costco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Scholarships, food donations, community health initiatives.",
                    sources: [
                        (name: "Costco Community", url: "https://www.costco.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Partial supplier info, limited working conditions detail.",
                    sources: [
                        (name: "Costco Supply Chain", url: "https://www.costco.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Organic Produce Section", description: "Certified organic, reduced pesticides, local sourcing.", ethicalScore: 80)
            ],
            unethicalProducts: [
                Product(name: "Bulk Plastic Household Items", description: "High plastic use, unclear sourcing standards.", ethicalScore: 40)
            ]
        ),
        Company(
            name: "CVS",
            category: .retail,
            overallScore: 60,
            scores: ScoreBreakdown(
                carbonEmissions: 55,
                laborPractices: 65,
                environmentalImpact: 60,
                governance: 70,
                communityEngagement: 75,
                supplyChainTransparency: 35
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Basic energy efficiency, early-stage renewables.",
                    sources: [
                        (name: "CVS Social Responsibility", url: "https://cvshealth.com/social-responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Pharmacists well-compensated, retail staff wages improving slowly.",
                    sources: [
                        (name: "CVS Workforce", url: "https://cvshealth.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Medication disposal, reducing plastic bags, room to improve packaging.",
                    sources: [
                        (name: "CVS Environmental", url: "https://cvshealth.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "ESG reporting, some external verification.",
                    sources: [
                        (name: "CVS Governance", url: "https://cvshealth.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Health clinics, vaccination drives, local community support.",
                    sources: [
                        (name: "CVS Community", url: "https://cvshealth.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Complex pharma chain, limited public details.",
                    sources: [
                        (name: "CVS Supply Chain", url: "https://cvshealth.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "CVS-Branded Recycled Paper Products", description: "Certified recycled content, reduced deforestation.", ethicalScore: 80)
            ],
            unethicalProducts: [
                Product(name: "Cheap Plastic Accessories", description: "Unclear sourcing, non-recyclable plastics.", ethicalScore: 45)
            ]
        ),
        Company(
            name: "Walgreens",
            category: .retail,
            overallScore: 58,
            scores: ScoreBreakdown(
                carbonEmissions: 50,
                laborPractices: 60,
                environmentalImpact: 65,
                governance: 60,
                communityEngagement: 75,
                supplyChainTransparency: 40
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Limited renewables, store-level efficiency only.",
                    sources: [
                        (name: "Walgreens ESG", url: "https://www.walgreensbootsalliance.com/esg")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Some wage improvements, many part-time with limited benefits.",
                    sources: [
                        (name: "Walgreens Workforce", url: "https://www.walgreensbootsalliance.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Medication disposal kiosks, some recycling efforts.",
                    sources: [
                        (name: "Walgreens Environmental", url: "https://www.walgreensbootsalliance.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Reports ESG metrics, limited independent verification.",
                    sources: [
                        (name: "Walgreens Governance", url: "https://www.walgreensbootsalliance.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Health screenings, education support, charity partnerships.",
                    sources: [
                        (name: "Walgreens Community", url: "https://www.walgreensbootsalliance.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Minimal supplier disclosure, basic compliance statements.",
                    sources: [
                        (name: "Walgreens Supply Chain", url: "https://www.walgreensbootsalliance.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Reusable Tote Bags", description: "Encourages reuse, reduces single-use plastic.", ethicalScore: 80)
            ],
            unethicalProducts: [
                Product(name: "Low-Cost Plastic Toys", description: "Unclear sourcing, possible chemical safety issues.", ethicalScore: 45)
            ]
        ),
        Company(
            name: "Home Depot",
            category: .retail,
            overallScore: 70,
            scores: ScoreBreakdown(
                carbonEmissions: 65,
                laborPractices: 70,
                environmentalImpact: 80,
                governance: 75,
                communityEngagement: 85,
                supplyChainTransparency: 45
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Energy-efficient lighting, some solar, trucking reliance remains.",
                    sources: [
                        (name: "Home Depot Responsibility", url: "https://corporate.homedepot.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Training, reasonable wages, part-time roles less stable.",
                    sources: [
                        (name: "Home Depot Workforce", url: "https://corporate.homedepot.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Eco-friendly products, recycling options, reduced packaging.",
                    sources: [
                        (name: "Home Depot Environmental", url: "https://corporate.homedepot.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Annual responsibility reports, some third-party audits.",
                    sources: [
                        (name: "Home Depot Governance", url: "https://corporate.homedepot.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Veteran housing, disaster relief, local grants.",
                    sources: [
                        (name: "Home Depot Community", url: "https://corporate.homedepot.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Supplier guidelines published, partial lists, more detail needed.",
                    sources: [
                        (name: "Home Depot Supply Chain", url: "https://corporate.homedepot.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "FSC-Certified Lumber", description: "Sustainably harvested wood, responsible forestry.", ethicalScore: 85)
            ],
            unethicalProducts: [
                Product(name: "Cheap Vinyl Flooring", description: "Possible PVC/VOC issues, no supplier clarity.", ethicalScore: 50)
            ]
        ),
        Company(
            name: "Best Buy",
            category: .retail,
            overallScore: 67,
            scores: ScoreBreakdown(
                carbonEmissions: 70,
                laborPractices: 65,
                environmentalImpact: 75,
                governance: 70,
                communityEngagement: 80,
                supplyChainTransparency: 50
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Renewables investment, electronics recycling programs.",
                    sources: [
                        (name: "Best Buy Sustainability", url: "https://corporate.bestbuy.com/sustainability-at-best-buy/")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Decent wages, training, some seasonal staffing issues.",
                    sources: [
                        (name: "Best Buy Workforce", url: "https://corporate.bestbuy.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Promotes Energy Star products, recycling events.",
                    sources: [
                        (name: "Best Buy Environmental", url: "https://corporate.bestbuy.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "ESG reports, some verified metrics.",
                    sources: [
                        (name: "Best Buy Governance", url: "https://corporate.bestbuy.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Tech education for youth, mentorship, community grants.",
                    sources: [
                        (name: "Best Buy Community", url: "https://corporate.bestbuy.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Some supplier info published, more detail needed.",
                    sources: [
                        (name: "Best Buy Supply Chain", url: "https://corporate.bestbuy.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Energy Star-Certified Appliances", description: "Reduced energy consumption, lower emissions.", ethicalScore: 85)
            ],
            unethicalProducts: [
                Product(name: "Generic Electronics (Unverified)", description: "Unknown sourcing, minimal standards.", ethicalScore: 50)
            ]
        ),
        Company(
            name: "HomeGoods",
            category: .retail,
            overallScore: 55,
            scores: ScoreBreakdown(
                carbonEmissions: 50,
                laborPractices: 60,
                environmentalImpact: 55,
                governance: 60,
                communityEngagement: 65,
                supplyChainTransparency: 40
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Limited renewables, basic efficiency only.",
                    sources: [
                        (name: "TJX Responsibility Page", url: "https://www.tjx.com/responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Moderate wages, mostly part-time workforce.",
                    sources: [
                        (name: "TJX Official Site", url: "https://www.tjx.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Some sustainable items, no robust environmental strategy.",
                    sources: [
                        (name: "TJX Environmental Info", url: "https://www.tjx.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Basic CSR reporting, no detailed independent audits.",
                    sources: [
                        (name: "TJX Governance Details", url: "https://www.tjx.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Local charity donations, limited partnerships.",
                    sources: [
                        (name: "TJX Community Initiatives", url: "https://www.tjx.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Minimal supplier info, basic compliance statements.",
                    sources: [
                        (name: "TJX Supply Chain Overview", url: "https://www.tjx.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Reusable Fabric Storage Bins", description: "Some made from recycled fibers, encourages reuse.", ethicalScore: 75)
            ],
            unethicalProducts: [
                Product(name: "Mass-Produced Decor (Unknown Wood)", description: "Potential unsustainable timber, no certifications.", ethicalScore: 45)
            ]
        ),
        Company(
            name: "Dollar General",
            category: .retail,
            overallScore: 50,
            scores: ScoreBreakdown(
                carbonEmissions: 45,
                laborPractices: 50,
                environmentalImpact: 55,
                governance: 60,
                communityEngagement: 65,
                supplyChainTransparency: 35
            ),
            reasons: [
                Reason(
                    categoryName: "Carbon Emissions",
                    explanation: "Few renewables, standard supply chain efficiencies only.",
                    sources: [
                        (name: "Dollar General Corporate Responsibility", url: "https://www.dollargeneral.com/corporate-responsibility")
                    ]
                ),
                Reason(
                    categoryName: "Labor Practices",
                    explanation: "Low wages, minimal benefits, slight improvements.",
                    sources: [
                        (name: "Dollar General Workforce", url: "https://www.dollargeneral.com/")
                    ]
                ),
                Reason(
                    categoryName: "Environmental Impact",
                    explanation: "Basic recycling in distribution centers, limited sourcing info.",
                    sources: [
                        (name: "Dollar General Environmental", url: "https://www.dollargeneral.com/")
                    ]
                ),
                Reason(
                    categoryName: "Governance",
                    explanation: "Corporate compliance statements, limited verification.",
                    sources: [
                        (name: "Dollar General Governance", url: "https://www.dollargeneral.com/")
                    ]
                ),
                Reason(
                    categoryName: "Community Engagement",
                    explanation: "Local literacy grants, some community support.",
                    sources: [
                        (name: "Dollar General Community", url: "https://www.dollargeneral.com/")
                    ]
                ),
                Reason(
                    categoryName: "Supply Chain Transparency",
                    explanation: "Minimal supplier details, low transparency.",
                    sources: [
                        (name: "Dollar General Supply Chain", url: "https://www.dollargeneral.com/")
                    ]
                )
            ],
            ethicalProducts: [
                Product(name: "Basic Paper Goods (FSC-Certified)", description: "Certified paper reduces deforestation.", ethicalScore: 75)
            ],
            unethicalProducts: [
                Product(name: "Low-Cost Plastic Household Items", description: "No known sustainability certifications.", ethicalScore: 40)
            ]
        )
    ]
}
