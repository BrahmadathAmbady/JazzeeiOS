//
//  JobListView.swift
//  Jazzee
//
//  Created by Brahmadath . on 30/09/24.
//


import SwiftUI

struct JobListView: View {
    @State private var jobs = [
        Job(title: "iOS Developer", company: "Company A", description: "Develop and maintain iOS applications.", skills: "Swift", experience: 2, salary: 80000),
        Job(title: "Product Manager", company: "Company B", description: "Lead cross-functional teams to develop products.", skills: "Product Management", experience: 3, salary: 100000),
        Job(title: "Data Analyst", company: "Company C", description: "Analyze data and deliver actionable insights.", skills: "Data Analysis", experience: 1, salary: 70000),
        Job(title: "Graphic Designer", company: "Company D", description: "Create amazing designs", skills: "Figma", experience: 1, salary: 30000)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(jobs) { job in
                        JobCardView(job: job, onRemove: {
                            if let index = jobs.firstIndex(where: { $0.id == job.id }) {
                                jobs.remove(at: index)
                            }
                        })
                    }
                }
                .padding()
            }
            .navigationTitle("Jobs")
        }
    }
}

