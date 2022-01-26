//
//  FoodBanksModel.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 25/01/2022.
//

//import SwiftUI
import MapKit
import Foundation


struct FoodBank: Decodable, Identifiable{
    var id: UUID
    var category: String
    var city: String
    var country: String
    var name: String
    var location: Coordinate
    var description: String
    var imageName: String
    var phoneNumber: String
    
    
    static let example = FoodBank(id: UUID(), category: "Food Bank", city: "Makkah al-Mukarramah", country: "Saudi Arabia", name: "Ikram", location: Coordinate(latitude: 21.481683485600932, longitude: 39.9468926459148), description: "Ikram organization for Food Preservation in Makkah was established on 9/4/1438 AH under License No. (1024) with the aim of preserving surplus food from banquets, wedding palaces and towers surrounding the Holy Mosque, transporting, preserving and rehabilitating it in a safe and healthy manner, and then distribute it to the poor, orphans and widows in Makkah.", imageName: "Ikram", phoneNumber: "0551322203")
   
    
    
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
}

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double

    func locationCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude,
                                      longitude: self.longitude)
    }
    
}

let annotations = [
    FoodBank(id: UUID(), category: "Food Bank", city: "Makkah al-Mukarramah", country: "Saudi Arabia", name: "Ikram", location: Coordinate(latitude: 21.481683485600932, longitude: 39.9468926459148), description: "Ikram organization for Food Preservation in Makkah was established on 9/4/1438 AH under License No. (1024) with the aim of preserving surplus food from banquets, wedding palaces and towers surrounding the Holy Mosque, transporting, preserving and rehabilitating it in a safe and healthy manner, and then distribute it to the poor, orphans and widows in Makkah.", imageName: "Ikram", phoneNumber: "0551322203")
    ]




