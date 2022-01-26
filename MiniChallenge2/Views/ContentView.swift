//
//  ContentView.swift
//  Chat
//
//  Created by Rahaf Alhubeis on 18/06/1443 AH.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessagesManager()

    var body: some View {
     VStack{
        VStack {
            ScrollView {
                TitleRow() 
                ForEach (messageManager.messages, id: \.id){ message in
                    MessageBubble(message: message)
                }
            } .padding(.top, 10)

        }
            MessageField()
                .environmentObject(messageManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
