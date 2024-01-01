//
//  FlightInformationsView.swift
//  MapFlightPlaneIndication
//
//  Created by Elliot Knight on 01/01/2024.
//

import SwiftUI

struct FlightInformationsView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Bluebird Cargo")
                        .fontWeight(.semibold)
                    Text("BF720")
                        .opacity(0.6)
                }
                Spacer()

                VStack(alignment: .trailing) {
                    Text("État")
                    Text("À l'heure")
                        .foregroundStyle(.green)
                }
            }
            .padding(.bottom)

            HStack(alignment: .center) {
                AirportDestinationView(
                    city: "Paris",
                    airport: "ORY",
                    terminal: "Terminal ORLY 4",
                    gate: "Porte F05",
                    alignment: .leading
                )

                Spacer()
                Image(systemName: "airplane")
                    .foregroundStyle(.primary)
                    .font(.system(size: 30))
                    .opacity(0.7)
                Spacer()

                AirportDestinationView(
                    city: "Newark",
                    airport: "EWR",
                    terminal: "Terminal B",
                    gate: nil,
                    alignment: .trailing
                )
            }

            Divider()

            FlightStartAndArrivingInformationsView(
                title: "Départ",
                hourInformation: "18:40 UTC+1",
                arrivingInformation: "lun. 1janv."
            )

            Divider()

            FlightStartAndArrivingInformationsView(
                title: "Arrivée",
                hourInformation: "21:40 UTC-5",
                arrivingInformation: "lun. 1janv."
            )

            Divider()

            FlightStartAndArrivingInformationsView(
                title: "Durée",
                hourInformation: "8h et 20 min",
                arrivingInformation: nil
            )
        }
    }
}

#Preview {
    FlightInformationsView()
}

// MARK: Extracted Views

private struct FlightStartAndArrivingInformationsView: View {
    let title: String
    let hourInformation: String
    let arrivingInformation: String?

    var body: some View {
        HStack(alignment: .top) {
            Text(title)
            Spacer()
            VStack(alignment: .trailing) {
                Text(hourInformation)
                Text(arrivingInformation ?? "")
            }
        }
        .padding(.top, 8)
    }
}

private struct AirportDestinationView: View {
    let city: String
    let airport: String
    let terminal: String
    let gate: String?
    let alignment: HorizontalAlignment
    var body: some View {
        VStack(alignment: alignment) {
            Text(city)
                .opacity(0.6)
            Text(airport)
                .font(.system(size: 40, weight: .bold))
            Text(terminal)
                .opacity(0.6)
            Text(gate ?? "")
                .opacity(0.6)
        }
    }
}
