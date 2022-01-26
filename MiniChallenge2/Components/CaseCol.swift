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
                                .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                            
                            VStack {
                                HStack {
                                    Image(systemName: "mappin.and.ellipse")
                                        .padding(.bottom, 8)
                                    Text(mycase.city)
                                        .fontWeight(.semibold)
                                        .font(.footnote)
                                    .fontWeight(.regular)
                                   
                                }
                                
                            }
                           
                               
                        }
                        
                        Spacer(minLength: 17)
                        ShareView()
                        HStack{
                            
                        }
                        
                    }
//                    .padding(.bottom, 6)
//                    Text("City: \(mycase.city)")
//                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
//                        .fontWeight(.bold)
                    .padding(.trailing)
//                    .padding()
                        Text(mycase.brief)
                    
                        .fontWeight(.semibold)
                        .frame(width: 300, alignment: .leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                           
                    }


                HStack(spacing:40){
                     
                        
                        if mycase.status >= 80{
                            Image(systemName:"triangle.fill")
                                .position(x: 158, y: 45) // red
                            .foregroundColor(.black)
                                       
                        }else if mycase.status >= 60 {
                            Image(systemName:"triangle.fill")
                            .position(x: 115, y: 45) // orange
                            .foregroundColor(.black)
                        }else{
                            
                            Image(systemName:"triangle.fill")
                                .position(x: 70, y: 45) // green
                            .foregroundColor(.black)
                        }
                        
                        StatusBar2(mycase: Case.mycase)
                        
                        
                        Button("View more") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        
                        
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





