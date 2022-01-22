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
        ScrollView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Case: \(mycase.caseNumber)")
                        .font(.title2)
                        .padding(.bottom, 10)
                    Text(mycase.detailText)
                }
                
                
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
                .padding(.top)
                
                StatusBar()
                
                    .padding()
                Button("Call Beneficiary") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(width: 299, height: 45)
                .background(Color("ColorGreen"))
                .foregroundColor(.white)
                .cornerRadius(20)
            }
            
            
            .foregroundColor(Color("ColorGreen"))
            .padding()
            .frame(width:350 ,height: 550)
            .background(Color.white)
            .cornerRadius(46)
            .overlay(RoundedRectangle(cornerRadius: 46)
                        .stroke(Color.gray, lineWidth: 1))
        }
        .navigationTitle("Case: \(mycase.caseNumber)")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}






struct CaseView_Previews: PreviewProvider {
    static var previews: some View {
        CaseView(mycase: Case.mycase)
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.dark)
    }
}
