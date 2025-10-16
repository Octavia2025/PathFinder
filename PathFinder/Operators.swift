//
//  Operators.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct Operators: View {
    var body: some View {
        NavigationStack{
        
                List {
                    
                    NavigationLink("ExtraCity"){
                        ExtraCityServices()
                    }
                    NavigationLink("ExtraCity Office Location"){
                        ZimbabweOfficesMapView()
                    }
                    NavigationLink("ExtraCity Office Location 2"){
                        
                    }
                }
            }
        }
    }

#Preview {
    Operators()
}
