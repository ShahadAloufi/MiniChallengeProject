//
//  LandMarkDetail.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 26/01/2022.
//

import SwiftUI

struct LandMarkDetail: View {
    let example: FoodBank
    var body: some View {
        ScrollView {
            FoodBankMapView(example: example)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(example: example)
                .offset(y: -130)
                .padding(.bottom, -160)

            VStack(alignment: .leading) {
                Text(example.name)
                    .font(.title)

                HStack {
                    Text(example.city)
                    Spacer()
                    Text(example.country)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(example.name)")
                    .padding(.bottom, 8)
                    .font(.title2)
                Text(example.description)
            }
            .padding()
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            Button(action: {
                let telephone = "tel://"
                let formattedString = telephone + example.phoneNumber
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
               }) {
                   Text("Call \(example.name)")
            }
            .frame(width: 299, height: 45)
            .background(Color("ColorGreen"))
            .foregroundColor(.white)
            .cornerRadius(20)
            
        }
        
        .navigationTitle(example.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(example: FoodBank.example)
    }
}
