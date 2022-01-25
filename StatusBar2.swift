//
//  StatusBar2.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 25/01/2022.
//

import SwiftUI

struct StatusBar2: View {
    let mycase: Case
    var body: some View {
        
        HStack(spacing: 0){
        Rectangle()
        .frame(width: 45, height: 15)
        .foregroundColor(Color(red: 0.30980392156862746, green: 0.5568627450980392, blue: 0.21176470588235294))
                                
        Rectangle()
        .frame(width: 45, height: 15)
        .foregroundColor(Color(red: 0.8666666666666667, green: 0.6274509803921569, blue: 0.3176470588235294))
                                    
        Rectangle()
        .frame(width: 45, height: 15)
        .foregroundColor(Color(red: 0.9058823529411765, green: 0.16470588235294117, blue: 0.16470588235294117))
        }
        .cornerRadius(20)
        .padding(.trailing)
        
    }
}

struct StatusBar2_Previews: PreviewProvider {
    static var previews: some View {
        StatusBar2(mycase: Case.mycase)
    }
}
