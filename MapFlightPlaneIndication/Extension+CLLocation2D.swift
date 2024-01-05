//
//  Extension+CLLocation2D.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 02/01/2024.
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D {
    /// Represents the coordinates for Orly Airport in Paris.
    static let orlyAirport = CLLocationCoordinate2D(latitude: 48.7262433, longitude: 2.365247199999999)

    /// Represents the coordinates for Newark Liberty International Airport.
    static let newarkAirport = CLLocationCoordinate2D(latitude: 40.6895314, longitude: -74.17446239999998)

    /// Represents the coordinates for London Heathrow Airport.
    static let londonHeathrowAirport = CLLocationCoordinate2D(latitude: 51.470025, longitude: -0.454295)

    /// Represents the coordinates for Dubai International Airport.
    static let dubaiAirport = CLLocationCoordinate2D(latitude: 25.2532, longitude: 55.3657)

    /// Represents the coordinates for John F. Kennedy International Airport.
    static let jfkAirport = CLLocationCoordinate2D(latitude: 40.6413, longitude: -73.7781)

    /// Represents the coordinates for Frankfurt Airport.
    static let frankfurtAirport = CLLocationCoordinate2D(latitude: 50.0333, longitude: 8.5706)
}

extension CLLocationCoordinate2D: Hashable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(latitude)
        hasher.combine(longitude)
    }
}
