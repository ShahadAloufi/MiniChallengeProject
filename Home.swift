//
//  Home.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct Home: View {
    
    let urgentCase = Bundle.main.decodeJson([Cases].self, fileName: "cases.json")
    
    
    var body: some View {
        
        
        
        
        
        
        Text("Reem")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        .environment(\.sizeCategory, .extraSmall)
        .preferredColorScheme(.dark)
    }
}
