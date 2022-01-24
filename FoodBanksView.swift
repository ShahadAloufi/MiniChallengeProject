//
//  FoodBanksView.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI
import MapKit

struct FoodBanksView: View {
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = " "
    @State private var tapped: Bool = false
    private func getNearByLandmarks() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "Charity"
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
                
            }
            
        }
        
    }
    func calculateOffset() -> CGFloat {
        if self.landmarks.count > 0 && !self.tapped {
            return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
        }
        else if self.tapped {
            return 100
        } else {
            return UIScreen.main.bounds.size.height
        }
    }
    var body: some View {
        ZStack(alignment: .top) {
            
            MapView(landmarks: landmarks)
 
            let nearby = self.getNearByLandmarks()
       

            TextField("Search", text: $search,  onEditingChanged: { _ in })
            {
                // commit
                nearby
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color.gray)
                .cornerRadius(17)
                .padding()
                .offset(y: 44)
            
            PlaceListView(landmarks: self.landmarks) {
                // on tap
                self.tapped.toggle()
            }
                .offset(y: calculateOffset())
            
        }
    }
}

struct FoodBanksView_Previews: PreviewProvider {
    static var previews: some View {
        FoodBanksView()
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.dark)
    }
}
