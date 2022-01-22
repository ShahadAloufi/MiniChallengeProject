//
//  LandmarkAnnotation.swift
//  NearFoodBank
//
//  Created by Rahaf Alhubeis on 17/06/1443 AH.
//

import Foundation
import UIKit
import MapKit


final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}
