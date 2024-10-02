//
//  AccountView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//
import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack { // Ensure this is wrapped in a NavigationStack
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                Text("User Name")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("email@example.com")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                Button(action: {
                    // Add account settings action here
                }) {
                    Text("Edit Profile")
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 40) // Adjust padding between buttons
                
                // NavigationLink to CreateAccountView
                NavigationLink(destination: CreateAccountView()) {
                    Text("Use Another Account")
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Account") // Optional: Set a navigation title
        }
    }
}
