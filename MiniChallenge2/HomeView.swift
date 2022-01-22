//
//  HomeView.swift
//  Beneficiary Details
//
//  Created by shahadmufleh on 20/01/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            BeneficiaryView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Beneficiary Details")
                }
            
            FoodBanksView()
                .tabItem{
                    Image(systemName: "building.columns.fill")
                    Text("Food Banks")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .extraSmall)
    }
}
