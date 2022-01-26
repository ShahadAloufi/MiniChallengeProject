//
//  MessageField.swift
//  Chat
//
//  Created by Rahaf Alhubeis on 19/06/1443 AH.
//
//
import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messagesManager: MessagesManager
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextFiled(placeholder: Text("Enter your message here"), text: $message)

            Button {
                messagesManager.sendMessage(text: message)
                message = ""
            } label: {
                Image (systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Green"))
                    .cornerRadius(50)
            }
        }.padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color("GrayNew"))
            .cornerRadius(50)
            .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessagesManager())
    }
}

struct CustomTextFiled: View {
    var placeholder: Text
    @Binding var text: String //Binding means that we can pass the varible from one view to another and modify that varible outside that view
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

