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
                Spacer()
                HStack {
                    
                    Text("Case \(mycase.caseNumber)")
                        .font(.title)
                        .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                    Spacer()
                        
                    ShareView()
                    
                }
                .padding(.bottom, 10)
                Text(mycase.detailText)
                    .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                    .lineLimit(nil)
          
                HStack {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.bottom, 2)
                        Text(mycase.disrtict)
                    }
                    .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                    Spacer()
                        .frame(width: 40 )
                    VStack{
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .frame(width: 60, height: 30)
                            .padding(.bottom, 2)
                        Text(" \(mycase.familyMembers) members")
                        
                    }
                    .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                }
                .padding()
                
                StatusBar(mycase: Case.mycase)
                if mycase.status > 80{
                    Image(systemName:"triangle.fill")
                        .position(x: 270, y: -1) // red
                    .foregroundColor(.black)
                               
                }else if mycase.status >= 60 {
                    Image(systemName:"triangle.fill")
                    .position(x: 185, y: -1) // orange
                    .foregroundColor(.black)
                }else{
                    
                    Image(systemName:"triangle.fill")
                        .position(x: 105, y: 1) // green
                    .foregroundColor(.black)
                }
                
                VStack {
                   
                
               
                    
                    NavigationLink( destination: ContentView()){
                               Text("Chat with Beneficiary")
                    }
                    
                    .frame(width: 299, height: 45)
                    .background(Color("ColorGreen"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                 

                    Button(action: {
                        let telephone = "tel://"
                        let formattedString = telephone + mycase.phoneNumber
                        guard let url = URL(string: formattedString) else { return }
                        UIApplication.shared.open(url)
                       }) {
                       Text("Call Beneficiary")
                           
                    }
                    
                    
                    .frame(width: 299, height: 45)
                    .background(Color("ColorGreen"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
                    
                    NavigationLink( destination: DoneView()){
                               Text("Conform Donation")
                    }
                    
                    
                    .frame(width: 200, height: 45)
                    .background(Color("ColorGreen"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                
            }
            
            .padding()
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            
            
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
