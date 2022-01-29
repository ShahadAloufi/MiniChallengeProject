//
//  Message.swift
//  Chat
//
//  Created by Rahaf Alhubeis on 19/06/1443 AH.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var received: Bool 
    var text: String
   //  if the user is the sender of the message it will be false and if he is the receiver of the message it will be true.
    var timestamp: Date
}

