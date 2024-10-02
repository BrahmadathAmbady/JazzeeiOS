//
//  JobCardView 5.swift
//  Jazzee
//
//  Created by Brahmadath . on 02/10/24.
//


import SwiftUI

struct JobCardView: View {
    let job: Job
    var onRemove: () -> Void // Closure to remove the job card

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Job Title and Company
            VStack(alignment: .leading, spacing: 5) {
                Text(job.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(job.company)
                    .font(.headline)
                    .foregroundColor(.white.opacity(0.8))
            }

            // Additional Info: Skills, Experience, Salary
            VStack(alignment: .leading, spacing: 10) {
                Label {
                    Text(job.skills)
                        .font(.body)
                        .foregroundColor(.white)
                } icon: {
                    Image(systemName: "wrench.and.screwdriver")
                        .foregroundColor(.white)
                }

                Label {
                    Text("Experience: \(job.experience) years")
                        .font(.body)
                        .foregroundColor(.white)
                } icon: {
                    Image(systemName: "briefcase.fill")
                        .foregroundColor(.white)
                }

                Label {
                    Text("Salary: $\(job.salary)")
                        .font(.body)
                        .foregroundColor(.white)
                } icon: {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 10)

            // Job Description
            Text(job.description)
                .font(.body)
                .foregroundColor(.white)
                .lineLimit(3)
                .padding(.top, 10)

            Spacer()

            // Remove Button for swiping functionality
            HStack {
                Spacer()
                Button(action: onRemove) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                }
            }
        }
        .padding(30)
        .frame(width: UIScreen.main.bounds.width - 40, height: 500)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 5)
    }
}
struct JobCardView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJob = Job(
            title: "iOS Developer",
            company: "Tech Company",
            description: "Develop and maintain iOS applications using Swift and SwiftUI.",
            skills: "Swift, UIKit",
            experience: 2,
            salary: 80000
        )
        
        JobCardView(job: sampleJob, onRemove: {})
    }}
