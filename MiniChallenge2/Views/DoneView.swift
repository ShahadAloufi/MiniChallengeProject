//
//  Done.swift
//  Yutemoon
//
//  Created by Manal Alangari on 22/01/2022.
//

import SwiftUI

struct DoneView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            ZStack(alignment: .center){
                
                
            Circle()
                
                .frame(width: 90, height: 90)
                .foregroundColor(Color(hue: 0.473, saturation: 0.29, brightness: 0.56, opacity: 0.724))
            Circle()
                
                .frame(width: 64, height: 64)
                .foregroundColor(Color(red: 0.12941176470588237, green: 0.27450980392156865, blue: 0.25098039215686274))
                Image("Vector7")
            }
            
        Text("Success")
                .foregroundColor(Color(red: 0.12941176470588237, green: 0.27450980392156865, blue: 0.25098039215686274))
                .font(.system(size: 28))
            
            Text("Thanks for securing food for those who need it")
                .frame(width: 328, height: 100, alignment: .center)
                .foregroundColor(Color(red: 0.12941176470588237, green: 0.27450980392156865, blue: 0.25098039215686274))
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
        }
    }
}

struct DoneView_Previews: PreviewProvider {
    static var previews: some View {
        DoneView()
    }
}
