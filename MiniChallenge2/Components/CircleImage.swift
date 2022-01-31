//
//  CircleImage.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 26/01/2022.
//

import SwiftUI

struct CircleImage: View {
    let example: FoodBank
    var body: some View {
        Image(example.mainImage)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 9)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(example: FoodBank.example)
    }
}
