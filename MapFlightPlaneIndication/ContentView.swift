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

                    MapPolyline(coordinates: CLLocationCoordinate2D.airports, contourStyle: .geodesic)
                        .stroke(Color.orange, lineWidth: 2.5)
                }

                HStack {
                    Picker("Airport departure", selection: $departureAirport) {
                        Text("Orly")
                            .tag(CLLocationCoordinate2D.orlyAirport)
                        Text("Newark")
                            .tag(CLLocationCoordinate2D.newarkAirport)
                    }
                    Spacer()
                    Picker("Airport arrival", selection: $arrivalAirport) {
                        Text("Orly")
                            .tag(CLLocationCoordinate2D.orlyAirport)
                        Text("Newark")
                            .tag(CLLocationCoordinate2D.newarkAirport)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
