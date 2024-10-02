//
//  ProfileView.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//

import SwiftUI

import SwiftUI

struct ProfileView: View {
    // Sample user profile data
    let userProfile = UserProfile(name: "John Doe", email: "john.doe@example.com", bio: "iOS Developer passionate about creating apps.")

    var body: some View {
        VStack(alignment: .leading) {
            // Profile Picture
            Image("profile") // Use the image you added to the assets
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100) // Set size for the image
                .clipShape(Circle()) // Make the image circular
                .padding(.bottom, 20)

            // Profile Info
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            Text("Name: \(userProfile.name)")
                .font(.title2)
                .padding(.bottom, 5)

            Text("Email: \(userProfile.email)")
                .font(.title3)
                .padding(.bottom, 5)

            Text("Bio:")
                .font(.headline)
                .padding(.bottom, 5)

            Text(userProfile.bio)
                .font(.body)
                .padding(.bottom, 20)

            Spacer() // Push content to the top
        }
        .padding() // Add padding around the entire view
        .navigationTitle("Profile") // Set the title for the navigation bar
        .background(Color(.systemGray6)) // Add a background color
        .cornerRadius(10) // Add rounded corners to the view
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2) // Add shadow effect
        .padding() // Add padding to the whole view
    }
}


// Preview for ProfileView
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
