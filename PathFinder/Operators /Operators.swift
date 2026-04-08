//
//  Operators.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct Operators: View {
    var body: some View {
        NavigationStack {
            ScrollView { // ScrollView is better for different screen sizes
                VStack(spacing: 20) {
                    
                    // 1. Extra City Button
                    OperatorButton(
                        title: "ExtraCity",
                        color: .yellow,
                        icon: "bus.fill",
                        destination: AnyView(ExtraCityServices())
                    )
                    
                    // 2. ZUPCO Button
                    OperatorButton(
                        title: "ZUPCO",
                        color: .blue,
                        icon: "bus",
                        destination: AnyView(ZupcoServices())
                    )
                    
                    // 3. Stallion Cruise Button
                    OperatorButton(
                        title: "Stallion Cruise",
                        color: .purple,
                        icon: "bus.fill",
                        destination: AnyView(StallionCruiseServices())
                    )
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Select Operator")
            .background(Color(.systemGroupedBackground)) // Subtle grey background
        }
    }
}

//MARK: -  A reusable Button Component to keep your code "clean as one"
struct OperatorButton: View {
    var title: String
    var color: Color
    var icon: String
    var destination: AnyView
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack(spacing: 20) {
                Image(systemName: icon)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 150)
                    .background(color)
                    .cornerRadius(15)
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        }
    }
}

#Preview {
    Operators()
}
