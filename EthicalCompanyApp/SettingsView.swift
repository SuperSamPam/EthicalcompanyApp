import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("ACCOUNT")) {
                    NavigationLink(destination: SubscriptionManagementView()) {
                        Text("Manage Subscription")
                    }
                    NavigationLink(destination: RequestCompanyView()) {
                        Text("Request a Company")
                    }
                    NavigationLink(destination: ReportIssueView()) {
                        Text("Report an Issue")
                    }
                }
                
                Section(header: Text("INFORMATION")) {
                    NavigationLink(destination: FAQView()) {
                        Text("FAQ")
                    }
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

