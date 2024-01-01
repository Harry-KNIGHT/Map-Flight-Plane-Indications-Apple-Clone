//
//  ContentView.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 01/01/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var cameraPosition: MapCameraPosition = .camera(
        MapCamera(
            centerCoordinate: .init(latitude: 22.176310, longitude:-41.176251),
            distance: .infinity
        )
    )

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Map(
                    position: $cameraPosition
                ) {
                    Annotation("Orly airport", coordinate: .orlyAirport) {
                        Image(systemName: "airplane")
                            .font(.system(size: 20))
                            .rotationEffect(.degrees(200))
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

#Preview {
    ContentView()
}

extension CLLocationCoordinate2D {
    static let orlyAirport = CLLocationCoordinate2D(latitude: 48.7262433, longitude: 2.365247199999999)
}
