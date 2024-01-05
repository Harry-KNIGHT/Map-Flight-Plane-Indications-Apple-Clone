//
//  ContentView.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 01/01/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var departureAirport: CLLocationCoordinate2D = .orlyAirport
    @State private var arrivalAirport: CLLocationCoordinate2D = .newarkAirport
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                Map {
                    Annotation("Orly airport", coordinate: departureAirport) {
                        Image(systemName: "airplane")
                            .font(.system(size: 20))
                            .rotationEffect(.degrees(200))
                    }
                    .annotationTitles(.hidden)

                    MapPolyline(coordinates: [departureAirport, arrivalAirport], contourStyle: .geodesic)
                        .stroke(Color.orange, lineWidth: 2.5)
                }

                VStack {
                    DestinationPickerView(
                        title: "Departure",
                        selection: $departureAirport
                    )

                    Rectangle()
                        .foregroundStyle(.secondary)
                        .opacity(0.5)
                        .frame(height: 1)

                    DestinationPickerView(
                        title: "Arrival",
                        selection: $arrivalAirport
                    )

                }
                .padding(8)
            }
        }
    }
}

// MARK: Preview

#Preview {
    ContentView()
}

// MARK: - Extracted Views

private struct DestinationPickerView: View {
    let title: String
    @Binding var selection: CLLocationCoordinate2D
    var body: some View {
        HStack {
            Text("Departure")
                .font(.title3)
            Spacer()
            Picker("Airport \(title)", selection: $selection) {
                ForEach(Airport.airportsSample) { airport in
                    Text(airport.name)
                        .tag(airport.coordinate)
                }
            }
            .tint(.white)
        }
    }
}
