//
//  EventsListView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//


import SwiftUI

struct EventsListView: View {
    let events = [
        Event(id: "1", title: "Pawsome Pets: Meet the Team!", company: "Pawsome Pet Supply and Grooming", description: "Join us for an exclusive behind-the-scenes look at Pawsome Pets, where you’ll get to meet our team and learn about the day-to-day operations in the pet supply and grooming industry. Discover how we care for animals, maintain a healthy environment, and deliver top-notch services to our customers. This event will include a Q&A session with the company’s founders and department heads, providing insights into job opportunities, career growth, and the unique culture at Pawsome Pets. Whether you’re an animal lover or exploring a career in the pet care industry, this is the perfect chance to engage with us and learn more!", date: "Dec 06", time: "1:00 PM", duration: "1 hour"),
        Event(id: "2", title: "Fall Regional Career Fair", company: "Virtual group session", description: "The Fall Regional Career Fair is an unmissable event for job seekers across various industries. Connect with a wide range of employers, including top companies, startups, and non-profits. This virtual event offers breakout rooms for one-on-one discussions with recruiters, resume reviews, and live job listings. You’ll also have the chance to attend company presentations, learn about current hiring trends, and network with professionals. Whether you’re a recent graduate or an experienced professional looking for a career shift, this fair is a great opportunity to explore new career paths and make valuable connections.", date: "Nov 28", time: "10:00 AM", duration: "30 min"),
        Event(id: "3", title: "Meet and Greet", company: "Sprinkle Dreams", description: "Ever wondered what it’s like to work at a leading confectionery brand? Join Sprinkle Dreams for an interactive meet and greet, where you’ll get to know the team behind the magic. Learn about our creative process, company values, and how we’ve built a fun and collaborative workplace. This event will feature a live demonstration by our head pastry chef, showcasing our signature desserts and innovative baking techniques. Whether you’re interested in food science, marketing, or culinary arts, come explore career opportunities and discover how you can become part of our sweet journey!", date: "Nov 16", time: "2:00 PM", duration: "2 hours")
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(events) { event in
                        NavigationLink(destination: EventDetailView(
                            eventTitle: event.title,
                            companyName: event.company,
                            eventDescription: event.description,
                            eventDate: event.date,
                            eventTime: event.time,
                            eventDuration: event.duration
                        )) {
                            EventRow(event: event)
                                .padding(.horizontal)
                                .shadow(radius: 5)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Upcoming Events")
            .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
        }
    }
}

struct Event: Identifiable {
    var id: String
    var title: String
    var company: String
    var description: String
    var date: String
    var time: String
    var duration: String
}

struct EventRow: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Event title
            Text(event.title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            // Company name
            Text(event.company)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            // Date and time info with icons
            HStack {
                Label(event.date, systemImage: "calendar")
                    .foregroundColor(.secondary)
                Spacer()
                Label(event.time, systemImage: "clock")
                    .foregroundColor(.secondary)
            }
            
            // Duration info
            HStack {
                Label(event.duration, systemImage: "timer")
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .pink.opacity(0.14), radius: 5, x: 0, y: 2) // Uniform shadow
    }
}


struct EventsListView_Previews: PreviewProvider {
    static var previews: some View {
        EventsListView()
    }
}
import SwiftUI

struct EventDetailView: View {
    var eventTitle: String
    var companyName: String
    var eventDescription: String
    var eventDate: String
    var eventTime: String
    var eventDuration: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Event title
                Text(eventTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // Company name
                Text(companyName)
                    .font(.title2)
                    .foregroundColor(.gray)
                
                // Date and time
                HStack {
                    Text("Date: \(eventDate)")
                    Spacer()
                    Text("Time: \(eventTime)")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                // Duration
                Text("Duration: \(eventDuration)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Event description
                Text(eventDescription)
                    .font(.body)
                    .padding(.top, 20)
                
                Spacer()

                // Apply Now button
                Button(action: {
                    // Action for Apply Now button
                    print("Apply Now pressed")
                }) {
                    Text("Apply Now")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.4), radius: 10, x: 0, y: 5)
                }
                .padding(.top, 30)
            }
            .padding()
        }
        .navigationTitle("Event Details")
    }
}
