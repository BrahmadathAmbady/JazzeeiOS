//
//  Job.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//


import Foundation

struct Job: Identifiable, Equatable {
   
    var id = UUID()
        let title: String
        let company: String
        let description: String
        let skills: String
        let experience: Int
        let salary: Int
    

    // Equatable conformance will be automatically synthesized by the compiler.

    // You can add an initializer if needed
    init(title: String, company: String, description: String,skills: String,
        experience: Int,
        salary: Int) {
        self.id = UUID()  // Automatically generates a unique ID
        self.title = title
        self.company = company
        self.description = description
        self.skills=skills
        self.experience=experience
        self.salary=salary
        
    }
}
