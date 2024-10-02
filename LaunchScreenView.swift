//
//  LaunchScreenView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isActive = false
    @State private var logoOpacity = 0.0
    
    var body: some View {
        if isActive {
            MainTabView() // The main view of your app
        } else {
            ZStack {
                // Background Color (optional)
                LinearGradient(
                    gradient: Gradient(colors: [Color.purple, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                VStack {
                    // Add your app logo here
                    Image("logo") // Ensure the image name matches the one you added to Assets.xcassets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150) // Adjust the size as needed
                        .opacity(logoOpacity)
                        .onAppear {
                            // Fade-in animation
                            withAnimation(.easeIn(duration: 1.2)) {
                                logoOpacity = 1.0
                            }
                        }
                    
                    
                }
            }
            .onAppear {
                // After 2 seconds, transition to the main app view
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
