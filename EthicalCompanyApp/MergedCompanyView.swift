import SwiftUI

struct MergedCompanyView: View {
    // Combine all three data sources now
    let allCompanies = SampleData.companies + AdditionalData.companies + AdditionalData2.companies

    @State private var searchText = ""
    @State private var selectedCategory: Category? = nil
    @State private var showCategories = false
    @State private var showEthicalOnly = false

    var filteredCompanies: [Company] {
        var result = allCompanies
        if showEthicalOnly {
            result = result.filter { $0.overallScore >= 70 }
        }

        if let category = selectedCategory {
            result = result.filter { $0.category == category }
        }

        // If you implement search, use searchText here to filter by name
        // if !searchText.isEmpty {
        //    result = result.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        // }

        return result
    }

    var body: some View {
        VStack {
            HStack {
                TextField("Search or filter by category...", text: $searchText, onEditingChanged: { editing in
                    if editing { showCategories = true }
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                Button(action: {
                    showCategories.toggle()
                }) {
                    Text("Categories")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.green.cornerRadius(8))
                }

                Button(action: {
                    showEthicalOnly.toggle()
                }) {
                    Text(showEthicalOnly ? "All Scores" : "70+ Only")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color.blue.cornerRadius(8))
                }
                .padding(.trailing, 10)
            }
            .padding()

            if showCategories {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Category.allCases, id: \.self) { cat in
                            Button(action: {
                                if selectedCategory == cat {
                                    selectedCategory = nil
                                } else {
                                    selectedCategory = cat
                                }
                            }) {
                                Text(cat.rawValue)
                                    .font(.subheadline)
                                    .padding(10)
                                    .background(cat == selectedCategory ? Color.blue : Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }

            List(filteredCompanies) { company in
                NavigationLink(destination: CompanyDetailView(company: company)) {
                    HStack {
                        Text(company.name)
                            .font(.headline)
                        Spacer()
                        Text("\(company.overallScore)")
                            .foregroundColor(company.isEthical ? .green : .red)
                    }
                }
            }
        }
        .navigationTitle("Companies")
    }
}
