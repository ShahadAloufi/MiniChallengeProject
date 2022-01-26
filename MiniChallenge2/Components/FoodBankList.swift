//
//  FoodBankList.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 26/01/2022.
//

import SwiftUI

struct FoodBankList: View {
    let col:[GridItem] = Array(repeating: .init(.flexible(), spacing: 8), count: 1)
    var body: some View {
        NavigationView {
            List(foodBanks) { foodbank in
                NavigationLink {
                    LandMarkDetail(example: foodbank)
                } label: {
                    LandMarkrow(example: foodbank)
                }
            }
            .navigationTitle("Food Banks")
        }
    }
}

struct FoodBankList_Previews: PreviewProvider {
    static var previews: some View {
        FoodBankList()
    }
}
