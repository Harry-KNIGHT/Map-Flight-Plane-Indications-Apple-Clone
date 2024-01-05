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
    /// Represents a sample collection of airports used for previews and test data.
    ///
    /// This sample collection includes predefined airports with their respective names and coordinates.
    static let airportsSample: [Self] = [
        .init(name: "Orly", coordinate: .orlyAirport),
        .init(name: "Newark", coordinate: .newarkAirport),
        .init(name: "London Heathrow", coordinate: .londonHeathrowAirport),
        .init(name: "Dubai", coordinate: .dubaiAirport),
        .init(name: "JFK", coordinate: .jfkAirport),
        .init(name: "Frankfurt", coordinate: .frankfurtAirport)
    ]
}
