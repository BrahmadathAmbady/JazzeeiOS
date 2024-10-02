//
//  UserProfile.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//

import Foundation

struct UserProfile {
    let id: UUID
    let name: String
    let email: String
    let bio: String
    
    // You can create an initializer if needed
    init(name: String, email: String, bio: String) {
        self.id = UUID()
        self.name = name
        self.email = email
        self.bio = bio
    }
}
