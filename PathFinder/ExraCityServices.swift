//
//  ExraCityServices.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/15/25.
//

import SwiftUI

struct ExtraCityServicesTable: Identifiable {
    let id: UUID = UUID()
    var route: String
    var time: String
    var fare: String
}

struct ExtraCityServices: View {
    
    
    @State private var searchText: String = ""
    
    private var servicesTable: [ExtraCityServicesTable] = [
        ExtraCityServicesTable(route: "Harare to Victoria Falls", time: "6:30am, 9am, 5pm, 5:30pm", fare: "$30.00"),
        ExtraCityServicesTable(route: "Byo to Victoria Falls", time: "9:00 am, 11:00 am, 2:00 pm, 5:00 pm, 11:30 pm, 12:30 am", fare: "$15.00"),
        ExtraCityServicesTable(route: "Hwange to Harare", time: "8:00 am, 9:00 pm, 9:30 pm", fare: "$25.00"),
        ExtraCityServicesTable(route: "Vic Falls to Harare", time: "6:30 am, 8:00 pm, 10:30 pm", fare: "$25.00"),
        ExtraCityServicesTable(route: "Byo to Harare", time: "1:00am, 3:30 am, 5:00 am, 1:30 pm", fare: "$15.00"),
        ExtraCityServicesTable(route: "Gweru to Harare", time: "3:30am, 5:00 am, 7:00 am, 3:00 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Gweru to Vic Falls", time: "10:30am, 1:00 pm, 9:00 pm, 9:30 pm", fare: "$20.00"),
        ExtraCityServicesTable(route: "Lupane to Harare", time: "12:30am, 2:00 am, 10:00 am, 11:00 pm", fare: "$20.00"),
        ExtraCityServicesTable(route: "Lupane to Byo", time: "11:00 am", fare: "$10.00"),
        ExtraCityServicesTable(route: "Lupane to Vic Falls", time: "2:00am, 2:30 am, 11:00 am, 1:00 pm, 4:00 pm, 7:00 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Kwekwe to Harare", time: "5:00am, 6:30 am, 8:00 am, 4:00 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Kwekwe to Vic Falls", time: "9:30am, 12:00 am, 8:00 pm, 8:30 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Kadoma to Harare", time: "6:30am, 7:30 am, 8:00 am, 9:00 am, 5:00 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Kadoma to Vic Falls", time: "8:30am, 11:00 am, 7:00 pm, 7:30 pm", fare: "$10.00"),
        ExtraCityServicesTable(route: "Chegutu to Harare", time: "7:30am, 8:30 am, 10:00 am, 6:00 pm", fare: "$5.00"),
        ExtraCityServicesTable(route: "Chegutu to Vic Falls", time: "7:30am, 10:00 am, 6:00 pm, 6:30 pm", fare: "$20.00")
    ]
    
    // Filtered list based on search text
    var filteredServices: [ExtraCityServicesTable] {
        if searchText.isEmpty {
            return servicesTable
        } else {
            return servicesTable.filter {
                $0.route.localizedCaseInsensitiveContains(searchText) ||
                $0.time.localizedCaseInsensitiveContains(searchText) ||
                $0.fare.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredServices) { service in
                VStack(alignment: .leading, spacing: 6) {
                    Text(service.route)
                        .font(.headline)
                    Text("Time: \(service.time)")
                        .font(.subheadline)
                    Text("Fare: \(service.fare)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Extra City Services")
            .searchable(text: $searchText, prompt: "Search routes, time or fare")
            
            NavigationLink("OfficeLocation"){
                ZimbabweOfficesMapView()
            }
            .padding()
            NavigationLink("Travel_Extras_and_fees"){
                Travel_Extras_and_fees()
            }
        }
        
    }
    
}

#Preview {
    ExtraCityServices()
}
