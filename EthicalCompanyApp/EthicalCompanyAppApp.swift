import SwiftUI

@main
struct EthicalCompanyApp: App {
    @State private var showMenu: Bool = true // Default to true to show MainView first
    @StateObject var subscriptionManager = SubscriptionManager()

    init() {
        // Set global navigation and tab bar appearance
        let navAppearance = UINavigationBarAppearance()
        navAppearance.backgroundColor = UIColor(named: "AppGreen")
        navAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = navAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navAppearance
        UINavigationBar.appearance().tintColor = .white

        let tabAppearance = UITabBarAppearance()
        tabAppearance.backgroundColor = UIColor(named: "AppGreen")
        UITabBar.appearance().standardAppearance = tabAppearance
        UITabBar.appearance().tintColor = .white

        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = tabAppearance
        }
    }

    var body: some Scene {
        WindowGroup {
            if showMenu {
                MainView(showMenu: $showMenu)
                    .accentColor(.green) // Use green accents for buttons
                    .foregroundColor(.black) // Set global text color to black
            } else {
                TabView {
                    NavigationView {
                        MergedCompanyView()
                            .environmentObject(subscriptionManager)
                    }
                    .tabItem {
                        Label("Companies", systemImage: "list.bullet")
                    }

                    NavigationView {
                        ScanView(showMenu: $showMenu)
                            .environmentObject(subscriptionManager)
                    }
                    .tabItem {
                        Label("Scan", systemImage: "barcode.viewfinder")
                    }

                    NavigationView {
                        SettingsView()
                            .environmentObject(subscriptionManager)
                    }
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
                }
            }
        }
    }
}
