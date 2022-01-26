//
//  MessageBubble .swift
//  Chat
//
//  Created by Rahaf Alhubeis on 19/06/1443 AH.
//

//import SwiftUI
//
//struct MessageBubble_: View {
//    var message: Message
//    @State private var ShowTime = false
//    var body: some View {
//        VStack (alignment: message.recevid ? .leading : .trailing) {
//            HStack {
//                Text(message.text)
//                    .padding()
//                    .background(message.recevid ? Color("Gray") : Color("Green2"))
//                    .cornerRadius(30)
//
//            }
//            .frame( maxWidth: 300, alignment: message.recevid ? .leading : .trailing)
//            .onTapGesture {
//                ShowTime.toggle()
//            }
//            if ShowTime {
//                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
//                    .font(.caption2)
//                    .foregroundColor(.gray)
//                    .padding(message.recevid ? .leading : .trailing, 25)
//            }
//        }.frame(maxWidth: .infinity, alignment: message.recevid ? .leading : .trailing)
//            .padding(message.recevid ? .leading : .trailing)
//            .padding(.horizontal, 10)
//    }
//}
//
//struct MessageBubble__Previews: PreviewProvider {
//    static var previews: some View {
//        MessageBubble_(message:Message(id: "1234", text: "Hi!", recevid: false, timestamp: Date()))
//    }
//}

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Green2"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", received: true, text: "I've been coding applications from scratch in SwiftUI and it's so much fun!", timestamp: Date()))
    }
}
