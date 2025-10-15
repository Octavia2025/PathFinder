//
//  ContentView.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("logo")
                    .padding()
                Text("Welcome to PathFinder .... discover the best paths")
                Image("location")
                NavigationLink("Next") {
                    Next()
                    
                }
                
            }
            
            
            .padding()
            
            
        }
    }
    struct Next: View {
        var body: some View {
            
        }
    }
}
#Preview {
    ContentView()
}
