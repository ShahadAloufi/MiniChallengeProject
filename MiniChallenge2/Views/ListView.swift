//
//  ContentView.swift
//  FoodBanksLandMarkList
//
//  Created by shahadmufleh on 25/01/2022.
//
import SwiftUI

struct ListView: View {
    let example: FoodBank
    var body: some View {
        VStack {
            FoodBankMapView(example: FoodBank.example)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(example: FoodBank.example)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("\(example.name) Food Bank")
                    .font(.title)

                HStack {
                    Text(example.city)
                    Spacer()
                    Text(example.country)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.top, 1)

                Divider()

                Text("About \(example.name)")
                    .font(.title2)
                    .padding(.bottom, 1)
                Text(example.description)
            }
            .padding()
           
            Spacer()
            Spacer()
            Spacer()
            let numberString = "111-222-3334"
            Button(action: {
                let telephone = "tel://"
                let formattedString = telephone + numberString
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
               }) {
               Text("Call Food Bank")
            }
            .frame(width: 299, height: 45)
            .background(Color("ColorGreen"))
            .foregroundColor(.white)
            .cornerRadius(20)
            
            
            
            Spacer()
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(example: FoodBank.example)
            .preferredColorScheme(.light)
            .environment(\.sizeCategory, .extraSmall)
    }
}
