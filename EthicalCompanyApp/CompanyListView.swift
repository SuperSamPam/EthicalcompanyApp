import SwiftUI

struct CompanyListView: View {
    let companies = SampleData.companies
    var selectedCategory: Category? = nil
    
    @State private var searchText = ""

    var filteredCompanies: [Company] {
        var result = companies
        if let category = selectedCategory {
            result = result.filter { $0.category == category }
        }
        if !searchText.isEmpty {
            result = result.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
        return result
    }
    
    var body: some View {
        VStack {
            searchBar
            List(filteredCompanies) { company in
                NavigationLink(destination: CompanyDetailView(company: company)) {
                    HStack {
                        Text(company.name)
                            .font(.custom("YourCustomFontName", size: 18))
                        Spacer()
                        Text("\(company.overallScore)")
                            .font(.subheadline)
                            .foregroundColor(company.isEthical ? .green : .red)
                    }
                }
            }
        }
        .navigationTitle(selectedCategory == nil ? "Companies" : selectedCategory!.rawValue)
    }
    
    private var searchBar: some View {
        HStack {
            TextField("Search companies...", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}

//  CompanyListView.swift
//  EthicalCompanyApp
//
//  Created by Samay Singh on 12/18/24.
//

