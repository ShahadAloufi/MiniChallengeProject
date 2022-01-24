//
//  ShareView.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct ShareView: View {
    var body: some View {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .frame(width: 16, height: 21)
                    .foregroundColor(.black)
                    
        }
        
    }
    
    func shareButton() {
        guard let urlShare = URL(string: "https://borgenproject.org/tag/the-etaam-food-bank/") else { return }
                let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
                UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
