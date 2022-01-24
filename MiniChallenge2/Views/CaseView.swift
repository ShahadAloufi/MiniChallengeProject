//
//  CaseView.swift
//  Beneficiary Details
//
//  Created by shahadmufleh on 20/01/2022.
//

import SwiftUI

struct CaseView: View {
    let mycase: Case
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Case \(mycase.caseNumber)")
                        .font(.title2)
                        
                    Spacer()
                    ShareView()
                    
                }
                .padding(.bottom, 10)
                Text(mycase.detailText)
                
                HStack {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.bottom, 2)
                        Text(mycase.disrtict)
                    }
                    
                    VStack{
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .frame(width: 60, height: 30)
                            .padding(.bottom, 2)
                        Text(" \(mycase.familyMembers) members")
                        
                    }
                }
                .padding()
                StatusBar()
            }
            .padding()
            
            VStack {
               
                
                Spacer()
                
                    .padding()
                Button("Chat with Beneficiary") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(width: 299, height: 45)
                .background(Color("ColorGreen"))
                .foregroundColor(.white)
                .cornerRadius(20)
                let numberString = "111-222-3334"

                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + numberString
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                   }) {
                   Text("Call Beneficiary")
                }
                .frame(width: 299, height: 45)
                .background(Color("ColorGreen"))
                .foregroundColor(.white)
                .cornerRadius(20)
            }
            
            
            
        }
        .navigationBarTitle("Beneficiary Details")
        .navigationBarTitleDisplayMode(.inline) 
        .padding()
        
        
        
    }
    
    
    
}






struct CaseView_Previews: PreviewProvider {
    static var previews: some View {
        CaseView(mycase: Case.mycase)
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.light)
    }
}
