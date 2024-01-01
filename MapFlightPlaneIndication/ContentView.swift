//
//  ContentView.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 01/01/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Map {
                    Annotation("Orly airport", coordinate: .orlyAirport) {
                        Image(systemName: "airplane")
                            .font(.system(size: 40))
                    }
                    .annotationTitles(.hidden)
                }

                FlightInformationsView()
                .padding()
                .background(.thinMaterial)
            }
        }
        .ignoresSafeArea()
    }
}
extension CLLocationCoordinate2D {
    static let orlyAirport = CLLocationCoordinate2D(latitude: 48.7262433, longitude: 2.365247199999999)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: 40.8075, longitude: -73.9626)
}

#Preview {
    ContentView()
}

