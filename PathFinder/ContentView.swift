//
//  ContentView.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Subtle background color to make the white cards pop
                Color(.systemGroupedBackground).ignoresSafeArea()
                
                VStack(spacing: 30) {
                    Spacer()
                    
                    // 1. Logo Section
                    VStack(spacing: 15) {
                        Image("logo") // Make sure "logo" is in Assets
                            .resizable()
                            .scaledToFit()
                            .frame(height: 120)
                            .shadow(radius: 5)
                        
                        Text("Welcome to PathFinder")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Discover the best paths")
                            .font(.headline)
                            .foregroundColor(.orange)
                            .italic()
                    }
                    
                    // 2. Illustration Section
                    Image("location") // Make sure "location" is in Assets
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 250)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    // 3. Navigation Button
                    NavigationLink(destination: Operators()) {
                        HStack {
                            Text("Get Started")
                                .fontWeight(.bold)
                            Image(systemName: "arrow.right.circle.fill")
                        }
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(15)
                        .shadow(color: .orange.opacity(0.3), radius: 10, y: 5)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
