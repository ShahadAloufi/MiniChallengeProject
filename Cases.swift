//
//  Cases.swift
//  Beneficiary Details
//
//  Created by shahadmufleh on 20/01/2022.
//

import Foundation
struct Cases: Decodable, Identifiable, Equatable{
    var id: UUID
    var caseDetail: [Case]
   

}

struct Case: Decodable, Identifiable, Equatable{
    var id: UUID
    var caseNumber: Int
    var name: String
    var city: String
    var brief: String
    var status: Int
    var detailText: String
    var disrtict: String
    var familyMembers: Int
    var phoneNumber: String
    
    static let mycase = Case(id: UUID(), caseNumber: 1, name: "Um Sarah",city: "Riyadh", brief: "A divorced and unemployed woman that supports her children alone.The family suffers from low-income and lack of hands. They need donors to secure food to them as soon as possible.", status: 60,  detailText: "A divorced and unemployed woman that supports her children alone.The family suffers from low-income and lack of hands. They need donors to secure food to them as soon as possible.", disrtict: "Al-Malaz", familyMembers: 4, phoneNumber: "4728302574394")
  
    
}

