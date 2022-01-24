//
//  MapView2.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 24/01/2022.
//

import SwiftUI
import MapKit

struct MapView2: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion( center: CLLocationCoordinate2D(latitude: 23.8859, longitude: -45.0792),
                                                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var body: some View {
        
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
    }

        private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
    }


struct MapView2_Previews: PreviewProvider {
    static var previews: some View {
        MapView2(coordinate: CLLocationCoordinate2D(latitude: 23.8859, longitude: -45.0792))
    }
}
