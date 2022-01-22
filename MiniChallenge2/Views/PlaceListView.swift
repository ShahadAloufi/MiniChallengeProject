//
//  PlaceListView.swift
//  NearFoodBank
//
//  Created by Rahaf Alhubeis on 17/06/1443 AH.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color.white)
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            
            List {
                
                ForEach(self.landmarks, id: \.id) { landmark in
                    
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .fontWeight(.bold)
                        
                        Text(landmark.title)
                    }
                    .foregroundColor(.white)
                }
                
            }
            
        }.cornerRadius(10)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}

