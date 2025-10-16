//
//  OfficeLocation.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/16/25.
//

import SwiftUI
import MapKit

struct OfficeLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ZimbabweOfficesMapView: View {
    // Define office locations
    let offices = [
        OfficeLocation(name: "Harare Office", coordinate: CLLocationCoordinate2D(latitude: -17.8252, longitude: 31.0335)),
        OfficeLocation(name: "Bulawayo Office", coordinate: CLLocationCoordinate2D(latitude: -20.1323, longitude: 28.6265)),
        OfficeLocation(name: "Mutare Office", coordinate: CLLocationCoordinate2D(latitude: -18.9707, longitude: 32.6704)),
        OfficeLocation(name: "Gweru Office", coordinate: CLLocationCoordinate2D(latitude: -19.45, longitude: 29.82)),
        OfficeLocation(name: "Kwekwe Office", coordinate: CLLocationCoordinate2D(latitude: -18.9286, longitude: 29.8146)),
        OfficeLocation(name: "Victoria Falls  Office", coordinate: CLLocationCoordinate2D(latitude: -17.9244, longitude: 25.8567))
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
                                    .foregroundColor(.red)
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
        .navigationTitle("Zimbabwe Offices")
    }
}

#Preview {
    NavigationView {
        ZimbabweOfficesMapView()
    }
}
