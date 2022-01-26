//
//  TitleRow.swift
//  Chat
//
//  Created by Rahaf Alhubeis on 19/06/1443 AH.
//

import SwiftUI

struct TitleRow: View {
    var name = "Case1"
    let numberString = "111-222-3334"
    var body: some View {
        HStack(spacing: 20) {
            
                VStack(alignment: .leading) {
                       Text(name)
                           .font(.title).bold()
                       
                       Text("Online")
                           .font(.caption)
                           .foregroundColor(.gray)
                   }
                   .frame(maxWidth: .infinity, alignment: .leading)
                   
            
            Button(action: {
                let telephone = "tel://"
                let formattedString = telephone + numberString
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
               }) {
                   Image(systemName: "phone.fill")
                       .foregroundColor(.gray)
                       .padding(10)
                       .background(.white)
                       .cornerRadius(50)
            }
            
//                   Image(systemName: "phone.fill")
//                       .foregroundColor(.gray)
//                       .padding(10)
//                       .background(.white)
//                       .cornerRadius(50)
               }
               .padding()
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Gray"))
    }
}



