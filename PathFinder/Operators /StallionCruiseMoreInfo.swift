//
//  StallionCruiseMoreInfo.swift
//  PathFinder
//
//  Created by octavia on 14/4/2026.
//

import Foundation
import SwiftUI

// 1. Data Structure for Easy Management
struct StallionExtraInfo {
    static let companyName = "Stallion Cruise"
    static let officialWebsite = "https://stallioncruise.com"
    static let bookingPortal = "https://stallioncruise.com"
    static let phone = "+263772966611"
    static let email = "bookings@stallioncruise.com"
    
    static let amenities = [
        "Starlink High-Speed WiFi (Fleet-wide)",
        "Individual USB Charging Ports",
        "Luxury Reclining Seats",
        "Advanced Climate Control (A/C & Heating)",
        "Onboard Entertainment Systems",
        "24/7 Satellite Fleet Tracking",
        "Professional Onboard Hostess Service"
    ]
}

// 2. The Information & Links View
struct StallionDetailsView: View {
    var body: some View {
        List {
            // MARK: - Official Links
            Section(header: Text("Official Links").font(.caption).fontWeight(.bold)) {
                Link(destination: URL(string: StallionExtraInfo.officialWebsite)!) {
                    Label("Visit New Website", systemImage: "safari.fill")
                        .foregroundColor(.blue)
                }
                
                Link(destination: URL(string: StallionExtraInfo.bookingPortal)!) {
                    Label("Online Booking Portal", systemImage: "ticket.fill")
                        .foregroundColor(.green)
                }
            }

            // MARK: - Travel Extras & Amenities
            Section(header: Text("Travel Extras & Amenities").font(.caption).fontWeight(.bold)) {
                ForEach(StallionExtraInfo.amenities, id: \.self) { amenity in
                    Label(amenity, systemImage: "smile")
                        .symbolRenderingMode(.multicolor)
                        .font(.subheadline)
                }
            }

            // MARK: - Quick Contact
            Section(header: Text("Customer Support").font(.caption).fontWeight(.bold)) {
                Link(destination: URL(string: "tel:\(StallionExtraInfo.phone)")!) {
                    Label("Call Harare Office -  (+263772966611)", systemImage: "phone.fill")
                }
                
                Link(destination: URL(string: "mailto:\(StallionExtraInfo.email)")!) {
                    Label("Email Bookings-(bookings@stallioncruise.com)", systemImage: "envelope.fill")
                }
            }
            
            // MARK: - Physical Address
            Section(header: Text("Main Office").font(.caption).fontWeight(.bold)) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Southerton Garage")
                        .font(.headline)
                    Text("28 James Martin Drive, Southerton, Harare")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("More Information")
    }
}

// Preview for Xcode
struct StallionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StallionDetailsView()
        }
    }
}
