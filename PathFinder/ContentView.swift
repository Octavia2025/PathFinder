//
//  ContentView.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    Image("logo") 
                        .padding()
                    Text("Welcome to PathFinder .... discover the best paths")
                        .font(.headline)
                      .foregroundStyle(Color.orange)
                      .bold(true)
                        .padding(10)
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
