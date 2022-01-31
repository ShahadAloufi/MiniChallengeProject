//
//  LandMarkrow.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 26/01/2022.
//

import SwiftUI

struct LandMarkrow: View {
    let example: FoodBank
    var body: some View {
        HStack {
            Image(example.mainImage)
                .resizable()
                .frame(width: 50, height: 50)
            Text(example.name)

            Spacer()
        }
    }
}

struct LandMarkrow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkrow(example: FoodBank.example)
    }
}
