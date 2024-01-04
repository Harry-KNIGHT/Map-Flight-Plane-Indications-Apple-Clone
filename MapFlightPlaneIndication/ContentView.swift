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
            VStack(alignment: .center, spacing: 0) {
                Map {
                    Annotation("Orly airport", coordinate: .orlyAirport) {
                        Image(systemName: "airplane")
                            .font(.system(size: 20))
                            .rotationEffect(.degrees(200))
                    }
                    .annotationTitles(.hidden)

                    MapPolyline(coordinates: CLLocationCoordinate2D.airports, contourStyle: .geodesic)
                        .stroke(Color.orange, lineWidth: 2.5)
                }
                FlightInformationsView()
                    .padding()
                    .background(.thinMaterial)
            }
        }
    }
}

#Preview {
    ContentView()
}
