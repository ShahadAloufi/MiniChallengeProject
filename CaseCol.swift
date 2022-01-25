//
//  CaseCol.swift
//  Beneficiary Details
//
//  Created by shahadmufleh on 21/01/2022.
//

import SwiftUI

struct CaseCol: View {
    let mycase: Case
    var body: some View {
        ZStack {
            Image("MybackG")
                .resizable()
                .frame(width:350 ,height: 210)
                .cornerRadius(30)
            VStack {
                   
                VStack {
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text("Case: \(mycase.caseNumber)")
                                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                            VStack {
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                        .padding(.bottom, 8)
                                    Text(mycase.city)
                                        .font(.footnote)
                                    .fontWeight(.regular)
                                   
                                }
                                
                            }
                           
                               
                        }
                        
                        Spacer(minLength: 17)
                        ShareView()
                         
                        
                    }
//                    .padding(.bottom, 6)
//                    Text("City: \(mycase.city)")
//                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
//                        .fontWeight(.bold)
                    .padding(.trailing)
//                    .padding()
                        Text(mycase.brief)
                           
                    }


                    HStack{
                     
                        
                        if mycase.status > 80{
                            Image(systemName:"triangle.fill")
                                .position(x: 189, y: 60) // red
                            .foregroundColor(.black)
                                       
                        }else if mycase.status >= 60 {
                            Image(systemName:"triangle.fill")
                            .position(x: 150, y: 60) // orange
                            .foregroundColor(.black)
                        }else{
                            
                            Image(systemName:"triangle.fill")
                                .position(x: 105, y: 60) // green
                            .foregroundColor(.black)
                        }
                        
                        StatusBar2(mycase: Case.mycase)
                        
                        
                        Button("Donate now") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
//                        .padding(0.0)
                        
                        .frame(width: 90, height: 28)
                        .background(Color("ColorGreen"))
                        .foregroundColor(.white)
                        .font(.footnote)
                        .cornerRadius(8)
                        
                        
                    }
                    
                }
                .padding(6)
               
                .foregroundColor(Color("ColorGreen"))
                .frame(width:340 ,height: 198)
                .cornerRadius(20)
        }
        }
    
}

struct CaseCol_Previews: PreviewProvider {
    static var previews: some View {
        CaseCol(mycase: Case.mycase)
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.light)
    }
}



