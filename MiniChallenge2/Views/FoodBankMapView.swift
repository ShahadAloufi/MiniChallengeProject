//
//  FoodBankMapView.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 26/01/2022.
//

import SwiftUI
import MapKit

struct FoodBankMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.8859, longitude: 45.0792),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )
    let foodBank = Bundle.main.decodeJson([FoodBank].self, fileName: "landmarkData.json")
    let example: FoodBank
    
   
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {_ in
            MapPin(coordinate: example.location.locationCoordinate())
    }
        .frame(width: 400, height: 300)
        

    }
}

struct FoodBankMapView_Previews: PreviewProvider {
    static var previews: some View {
        FoodBankMapView(example: FoodBank.example)
    }
}
