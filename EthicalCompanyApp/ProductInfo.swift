//
//  ProductInfo.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//


import Foundation

struct ProductInfo {
    let name: String
    let ethicalScore: Int
    let description: String
}

struct ProductData {
    // A dictionary mapping product barcodes (Strings) to ProductInfo
    static let products: [String: ProductInfo] = [
        "1234567890": ProductInfo(
            name: "Organic Cotton T-Shirt",
            ethicalScore: 88,
            description: "Made from GOTS-certified organic cotton, ensuring fair labor and minimal environmental impact."
        ),
        "0987654321": ProductInfo(
            name: "Plastic Water Bottle",
            ethicalScore: 40,
            description: "Single-use plastic, high environmental cost and questionable labor practices in bottling facilities."
        )
        // Add more products here
    ]
}