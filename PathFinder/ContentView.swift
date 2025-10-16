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
            ScrollView{
                VStack {
                    Image("logo")
                        .padding()
                    Text("Welcome to PathFinder .... discover the best paths")
                    Image("location")
                    NavigationLink("Next") {
                        Operators()
                        
                    }
                    
                }
                
            }
            .padding()
            
            
        }
    }
   
}
#Preview {
    ContentView()
}
