//
//  JobsView 2.swift
//  Jazzee
//
//  Created by Brahmadath . on 02/10/24.
//


import SwiftUI

struct JobsView: View {
    @State var featuredJobs = [
        Job(title: "iOS Developer", company: "Company A", description: "Develop and maintain iOS applications.", skills: "Swift", experience: 2, salary: 80000),
        Job(title: "Product Manager", company: "Company B", description: "Lead cross-functional teams to develop products.", skills: "Product Management", experience: 3, salary: 100000),
        Job(title: "Data Analyst", company: "Company C", description: "Analyze data and deliver actionable insights.", skills: "Data Analysis", experience: 1, salary: 70000)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(featuredJobs) { job in
                        // Wrap the job card in a NavigationLink to navigate to JobDetailView
                        NavigationLink(destination: JobDetailView(job: job)) {
                            JobCardView(job: job, onRemove: {
                                // Action to remove job if necessary
                            })
                        }
                        .buttonStyle(PlainButtonStyle()) // Remove default button styling for card look
                    }
                }
                .padding()
            }
            .navigationTitle("Available Jobs")
        }
    }
}