//
//  MainTabView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            EventsListView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Events")
                }
            
            JobsView()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
            
            InboxView()
                .tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Inbox")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
        }
    }
}
