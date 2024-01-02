//
//  Extension+CLLocation2D.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 02/01/2024.
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D {
    static let orlyAirport = CLLocationCoordinate2D(latitude: 48.7262433, longitude: 2.365247199999999)
    static let newarkAirport = CLLocationCoordinate2D(latitude: 40.6895314, longitude: -74.17446239999998)

    static let airports: [CLLocationCoordinate2D] = [.orlyAirport, newarkAirport]
}
