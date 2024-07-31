//
//  MainTabView.swift
//  DealabsClone
//
//  Created by Tarek Noubli on 31/07/2024.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTab: String
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house")
                }
                .tag("Home")
            NotificationBellView()
                .tabItem {
                    Label("", systemImage: "bell")
                }
                .tag("Notification")
            SearchView()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
                .tag("Search")
            MessagingView()
                .tabItem {
                    Label("", systemImage: "envelope")
                }
                .tag("Messaging")
            ProfilView()
                .tabItem {
                    Label("", systemImage: "person.crop.circle")
                }
                .tag("Profil")
        }
    }
}

#Preview {
    MainTabView(selectedTab: "Home")
}
