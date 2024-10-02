//
//  CreateAccountView.swift
//  Jazzee
//
//  Created by Brahmadath . on 30/09/24.
//


// The CreateAccountView you provided
import SwiftUI

struct CreateAccountView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Provide University email")
                    .font(.largeTitle)
                    .padding(.bottom, 18)

                // Name Field
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                // Email Field
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .keyboardType(.emailAddress)

                // Password Field
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                // Confirm Password Field
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                // Create Account Button
                Button(action: createAccount) {
                    Text("Create Account")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()
            }
            .padding()
            .navigationTitle("Create Account")
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Passwords do not match."), dismissButton: .default(Text("OK")))
            }
        }
    }

    private func createAccount() {
        // Simple validation for password match
        if password != confirmPassword {
            showAlert = true
        } else {
            // Handle account creation logic here (e.g., send data to your backend)
            print("Account created for: \(name) with email: \(email)")
        }
    }
}