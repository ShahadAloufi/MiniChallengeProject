//
//  TitleRow.swift
//  Chat
//
//  Created by Rahaf Alhubeis on 19/06/1443 AH.
//

import SwiftUI

struct TitleRow: View {
    
    var body: some View {
        HStack(spacing: 20) {
            
            VStack(alignment: .leading) {
                Text("Chat with Beneficiary")
                    .font(.title).bold()
                    .foregroundColor(Color(hue: 0.473, saturation: 0.536, brightness: 0.274))
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .padding()
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("GrayNew"))
    }
}



