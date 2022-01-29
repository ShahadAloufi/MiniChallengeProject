//
//  StatusBar.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct StatusBar: View {
    let mycase: Case
    var body: some View {
        HStack(spacing: 0){
            Rectangle()
                .frame(width: 90, height: 30)
                .foregroundColor(Color(red: 0.30980392156862746, green: 0.5568627450980392, blue: 0.21176470588235294))
            
            //        .position(x: 105, y: -1)
            
            
            Rectangle()
                .frame(width: 90, height: 30)
                .foregroundColor(Color(red: 0.8666666666666667, green: 0.6274509803921569, blue: 0.3176470588235294))
            
            //        .position(x: 185, y: -1) // orange // index
            
            
            Rectangle()
                .frame(width: 90, height: 30)
                .foregroundColor(Color(red: 0.9058823529411765, green: 0.16470588235294117, blue: 0.16470588235294117))
            
            
            //        .position(x: 270, y: -1) // red
        }
        .cornerRadius(20)
        
        
    }
    
    
}

struct StatusBar_Previews: PreviewProvider {
    static var previews: some View {
        StatusBar(mycase: Case.mycase)
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.dark)
    }
}
