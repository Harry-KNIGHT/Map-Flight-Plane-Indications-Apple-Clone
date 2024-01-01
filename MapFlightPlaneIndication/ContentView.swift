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
                Map()

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

