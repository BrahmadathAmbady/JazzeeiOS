//
//  JobDetailView.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//

import SwiftUI

struct JobDetailView: View {
    let job: Job // Pass the Job object to this view

    var body: some View {
        ScrollView {
            Spacer(minLength: 20)
            VStack(alignment: .leading, spacing: 20) {
                // Job Title
                Text(job.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                     .padding(.bottom, 10)

                // Company Name and Job Type
                HStack {
                    Text(job.company)
                        .font(.title2)
                        .foregroundColor(.secondary)

                    Spacer()

                    Text("Full-Time")
                        .font(.headline)
                        .foregroundColor(.green)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding(.bottom, 10)

                // Job Location and Deadline
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Location")
                            .font(.headline)
                            .foregroundColor(.primary)

                        Text("San Francisco, CA") // Hardcoded location for now
                            .font(.body)
                            .foregroundColor(.gray)
                    }

                    VStack(alignment: .leading) {
                        Text("Deadline")
                            .font(.headline)
                            .foregroundColor(.primary)

                        Text("Dec 31, 2024") // Hardcoded deadline for now
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.bottom, 20)

                // Job Description
                Text("Job Description")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                
                Text(job.description)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)

                // Skills Required
                Text("Skills Required")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(job.skills)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)

                // Experience and Salary
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Experience")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text("\(job.experience) years")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Salary")
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text("$\(job.salary)")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }

                // Spacer to push the Apply Now button to the bottom
                Spacer()

                // Apply Now Button
                Button(action: {
                    // Add action for apply button here
                    print("Apply Now pressed")
                }) {
                    Text("Apply Now")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                .padding(.top, 30)
            }
            
            .padding(20)
            .background(Color(.systemBackground))
            .cornerRadius(20)
            .shadow(radius: 5)
        }
        .padding()
        .navigationTitle("Job Details") // Title for this view
    }
}

// Preview for JobDetailView
struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample job data for the preview
        let sampleJob = Job(
            title: "iOS Developer",
            company: "Tech Company",
            description: """
                As an iOS Developer, you will be responsible for developing and maintaining iOS applications 
                from design to delivery. Your main duties will include building the user interface, implementing 
                backend services, and integrating third-party services. You will work closely with a cross-functional 
                team of product managers, designers, and backend developers to create high-quality apps that 
                offer a seamless user experience.
                
                In this role, you will also be involved in debugging, optimizing app performance, and ensuring 
                high code quality through unit testing. You will need to be proficient in using version control 
                systems (Git), managing app store releases, and staying up to date with iOS technologies and trends.
                
                We are looking for a creative and motivated developer who thrives in a collaborative, fast-paced 
                environment.
                """,
            skills: "Swift, UIKit, SwiftUI, RESTful APIs",
            experience: 2,
            salary: 100000
        )
        JobDetailView(job: sampleJob)
    }
}

