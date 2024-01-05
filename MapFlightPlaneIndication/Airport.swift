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
        .init(name: "Orly", coordinate: .orlyAirport),
        
        .init(name: "Newark", coordinate: .newarkAirport),

        .init(name: "London Heathrow", coordinate: .londonHeathrowAirport),

        .init(name: "Dubai", coordinate: .dubaiAirport),

        .init(name: "JFK", coordinate: .jfkAirport),

        .init(name: "Frankfurt", coordinate: .frankfurtAirport)
    ]
}
