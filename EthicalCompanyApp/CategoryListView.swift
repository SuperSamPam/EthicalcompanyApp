import SwiftUI

struct CategoryListView: View {
    let categories = Category.allCases

    var body: some View {
        List(categories, id: \.self) { cat in
            NavigationLink(destination: CompanyListView(selectedCategory: cat)) {
                Text(cat.rawValue)
                    .font(.headline)
            }
        }
        .navigationTitle("Categories")
    }
}
