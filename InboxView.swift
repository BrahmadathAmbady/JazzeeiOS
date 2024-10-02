//
//  InboxView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//
import SwiftUI

struct InboxView: View {
    var body: some View {
        VStack {
            Text("Inbox")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("No new messages.")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
    }
}
