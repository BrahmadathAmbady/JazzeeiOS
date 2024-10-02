//
//  ContentView 2.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//


import SwiftUI

struct ContentView: View {
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
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

