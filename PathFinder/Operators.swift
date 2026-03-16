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
            VStack(spacing: 0) { // spacing: 0 removes gaps between items
                
                NavigationLink(destination: ExtraCityServices()) {
                    Text("ExtraCity")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white) // Or any color you prefer
                }
                
                Divider() // Optional: adds a line between them
                
                NavigationLink(destination: Text("InterCity View")) {
                    Text("InterCity")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white)
                }
                
                Divider()
                
                NavigationLink(destination: StallionCruiseServices()) {
                    Text("Stallion Cruise")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white)
                }
            }
            .navigationTitle("Operators")
            .navigationBarTitleDisplayMode(.large)
            .font(Font.headline.bold())
        }
    }
}


#Preview {
    Operators()
}
