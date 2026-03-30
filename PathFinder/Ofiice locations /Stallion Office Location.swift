//
//  Stallion Office Location.swift
//  PathFinder
//
//  Created by octavia on 16/3/2026.
//

import Foundation
import SwiftUI
import MapKit

struct StallionCruiseOfficeLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    // Define office locations
    let offices = [
        OfficeLocation(name: "Harare Office", coordinate: CLLocationCoordinate2D(latitude: -17.854045, longitude: 31.021516)),
        OfficeLocation(name: "Bulawayo Office", coordinate: CLLocationCoordinate2D(latitude: -20.144415, longitude: 28.577232)),
        OfficeLocation(name: "Gweru Office", coordinate: CLLocationCoordinate2D(latitude: -19.4585, longitude: 29.8162)),
        
    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -19.0154, longitude: 29.1549),
        span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
    )
    
    var body: some View {
        Group {
            if #available(iOS 17.0, *) {
                
                Map(initialPosition: .region(region)) {
                    ForEach(offices) { office in
                        Annotation(office.name, coordinate: office.coordinate) {
                            VStack(spacing: 4) {
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Text(office.name)
                                    .font(.caption)
                                    .padding(4)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(6)
                            }
                        }
                    }
                }
            } else {
                
                Map(coordinateRegion: $region, annotationItems: offices) { office in
                    MapMarker(coordinate: office.coordinate, tint: .red)
                }
            }
        }
        .ignoresSafeArea()
        .navigationTitle("ExtraCity Zim Offices")
    }
}

#Preview {
    NavigationView {
        MapView()
    }
}
