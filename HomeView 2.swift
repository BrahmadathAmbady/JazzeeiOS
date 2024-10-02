//
//  HomeView 2.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//


import SwiftUI

struct HomeView: View {
    @State var featuredJobs = [
        Job(title: "iOS Developer", company: "Company A", description: "Develop and maintain iOS applications.", skills: "Swift", experience: 2, salary: 80000),
        Job(title: "Product Manager", company: "Company B", description: "Lead cross-functional teams to develop products.", skills: "Product Management", experience: 3, salary: 100000),
        Job(title: "Data Analyst", company: "Company C", description: "Analyze data and deliver actionable insights.", skills: "Data Analysis", experience: 1, salary: 70000)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Recommended Jobs")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(.blue)

                Spacer()

                ZStack {
                    // Iterate through jobs and display them in reverse order
                    ForEach(featuredJobs.indices.reversed(), id: \.self) { index in
                        JobCardView(job: self.featuredJobs[index]) {
                            // Remove the job card when swiped right
                            self.featuredJobs.remove(at: index)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, 50) // To prevent overlap with the tab bar

                Spacer()
            }
        }
    }
}

/*struct JobCardView: View {
    let job: Job
    let onRemove: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(job.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)

                    Text(job.company)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text(job.salary)
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }

            Text(job.description)
                .font(.body)
                .foregroundColor(.black)
                .lineLimit(3)

            HStack {
                Text("Skills: \(job.skills)")
                    .font(.subheadline)
                    .foregroundColor(.black)

                Spacer()

                Text("Exp: \(job.experience)")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }

            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 3)
        .frame(height: 200) // Larger height to fit more info
        .gesture(DragGesture().onEnded { value in
            if value.translation.width < -100 { // Swipe left
                withAnimation {
                    self.onRemove()
                }
            }
        })
    }
}*/
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }}
