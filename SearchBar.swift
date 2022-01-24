//
//  SearchBar.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var SearchText: String
    @State private var offset: CGFloat = 200.0
    @State private var isEditing = false
    var body: some View {
        HStack {
            TextField("Search here", text: $SearchText)
                .frame(width: 200, height: 10)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(18)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        if isEditing{
                            Button(action: {
                                self.SearchText = ""
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 12)
                            })
                        }
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            
            
            if isEditing{
                Button(action: {
                    self.isEditing = false
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    
                }){
                    Text("Cancel")
                    
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(Animation.easeInOut(duration: 1.0), value: offset)
                
            }
            
        }
    }
}
