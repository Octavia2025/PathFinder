//
//  ZupcoSchedule.swift
//  PathFinder
//
//  Created by octavia on 20/3/2026.
//


import SwiftUI

// 1. Data Model for ZUPCO
struct ZupcoSchedule: Identifiable, Codable {
    var id: UUID = UUID()
    var route: String
    var time: String
    var fare: String
}

struct ZupcoServices: View {
    
    @State private var searchText: String = ""
    
    // 2. ZUPCO Routes (Formatted for consistency with your other screens)
    private var servicesTable: [ZupcoSchedule] = [
        ZupcoSchedule(route: "Harare to Bulawayo", time: "5:00 am, 7:00 am, 10:00 am, 1:00 pm, 4:00 pm", fare: "$12.00"),
        ZupcoSchedule(route: "Bulawayo to Gweru", time: "6:00 am, 8:00 am, 12:00 pm", fare: "$8.00"),
        ZupcoSchedule(route: "Harare to Mutare", time: "6:30 am, 9:00 am, 2:30 pm", fare: "$10.00"),
        ZupcoSchedule(route: "Gweru to Kwekwe", time: "7:00 am, 11:00 am, 3:00 pm", fare: "$5.00"),
        ZupcoSchedule(route: "Harare to Masvingo", time: "6:00 am, 10:30 am, 1:30 pm", fare: "$10.00"),
        ZupcoSchedule(route: "Bulawayo to Victoria Falls", time: "7:00 am, 9:00 am", fare: "$12.00"),
        ZupcoSchedule(route: "Mutare to Chipinge", time: "8:00 am, 1:00 pm", fare: "$7.00"),
        ZupcoSchedule(route: "Harare to Bindura", time: "6:00 am, 8:00 am, 2:00 pm, 5:00 pm", fare: "$4.00"),
        ZupcoSchedule(route: "Kwekwe to Kadoma", time: "7:30 am, 12:30 pm", fare: "$4.00"),
        ZupcoSchedule(route: "Beitbridge to Bulawayo", time: "6:00 am, 10:00 am", fare: "$15.00")
    ]
    
    // 3. Search logic
    var filteredServices: [ZupcoSchedule] {
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
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(service.route)
                            .font(.headline)
                        Spacer()
                        Text(service.fare)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                    
                    HStack(alignment: .top) {
                        Image(systemName: "clock.fill")
                            .font(.caption)
                            .foregroundColor(.blue)
                        Text(service.time)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("ZUPCO Services")
            .searchable(text: $searchText, prompt: "Search routes, time or fare")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        NavigationLink("Office Location") {
                            ZimbabweOfficesMapView()
                        }
                        NavigationLink("Travel Extras & Fees") {
                            TravelExtrasView()
                        }
                    } label: {
                        Label("More", systemImage: "ellipsis.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    ZupcoServices()
}
