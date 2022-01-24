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
                    .padding(.bottom, 6)
//                    Text("City: \(mycase.city)")
//                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
//                        .fontWeight(.bold)
                    .padding(.trailing)
//                    .padding()
                        Text(mycase.brief)
                           
                    }


                    HStack{
                        HStack(spacing: 0){
                        Rectangle()
                        .frame(width: 45, height: 15)
                        .foregroundColor(Color(red: 0.30980392156862746, green: 0.5568627450980392, blue: 0.21176470588235294))
                                                
                        Rectangle()
                        .frame(width: 45, height: 15)
                        .foregroundColor(Color(red: 0.8666666666666667, green: 0.6274509803921569, blue: 0.3176470588235294))
                                                    
                        Rectangle()
                        .frame(width: 45, height: 15)
                        .foregroundColor(Color(red: 0.9058823529411765, green: 0.16470588235294117, blue: 0.16470588235294117))
                        }
                        .cornerRadius(20)
                        .padding(.trailing)
                        Button("Donate now") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .padding(0.0)
                        
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
