//
//  Airport.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 05/01/2024.
//

import Foundation
import CoreLocation

struct Airport: Identifiable {
    var id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension Airport {
    static let airportsSample: [Self] = [
        .init(name: "Orly", coordinate: CLLocationCoordinate2D.orlyAirport),
        .init(name: "Newark Airport", coordinate: CLLocationCoordinate2D(latitude: 40.6895314, longitude: -74.17446239999998)),

        .init(name: "London Heathrow Airport", coordinate: CLLocationCoordinate2D(latitude: 51.470025, longitude: -0.454295)),
        .init(name: "Sydney Airport", coordinate: CLLocationCoordinate2D(latitude: -33.946111, longitude: 151.177222)),
        .init(name: "Dubai Airport", coordinate: CLLocationCoordinate2D(latitude: 25.2532, longitude: 55.3657)),
        .init(name: "Tokyo Haneda Airport", coordinate: CLLocationCoordinate2D(latitude: 35.5494, longitude: 139.7798)),
        .init(name: "JFK Airport", coordinate: CLLocationCoordinate2D(latitude: 40.6413, longitude: -73.7781)),
        .init(name: "Paris CDG Airport", coordinate: CLLocationCoordinate2D(latitude: 49.0034, longitude: 2.5735)),
        .init(name: "Frankfurt Airport", coordinate: CLLocationCoordinate2D(latitude: 50.0333, longitude: 8.5706)),
    ]
}
