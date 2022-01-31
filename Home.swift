//
//  Home.swift
//  MiniChallenge2
// Reem's Page
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct Home: View {
    let urgentCase = Bundle.main.decodeJson([Cases].self, fileName: "cases.json")
    let rows: [GridItem] = Array(repeating: .init(.flexible(), spacing: 2), count: 1)
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:30){
                  
               ZStack {
                 
                TopPageView()
                }
             
                    VStack (spacing: 10 ){
                
                    HStack(spacing: 70){
                      Image("status1")
                        Image("status1")
                        Image("status2")
                    }

                        // Title for the status
                        HStack(spacing:45){
                            VStack {
                                Text("Donations")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                                Text("15,400")
                                
                                    .font(.headline)
                                
                                
                            }
                            
                            
                            VStack {
                                Text("Beneficiaries")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.159, green: 0.298, blue: 0.274))
                                
                                Text("16,600")
                                    .font(.headline)
                                
                                    
                            }
                            
                            VStack{
                          Text("Total")
                                    
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.159, green: 0.298, blue: 0.274))
                                    
                                Text("32,000")
                                    .font(.headline)
                            
                            }
                            
                            
                        }
                      
                    }
                 
                   
                    /// Urgent needs cards///
                    HStack{
                       
                 Text("Urgent Needs")
                
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.473, saturation: 0.536, brightness: 0.274))
                .position(x: 200, y: 30)
             
             
            }
                    
                    
                    
                    /// Case Boxes
                    ScrollView (.horizontal){
                        //Lazy
                       
                      
                        LazyHGrid(rows: rows, spacing: 11){
                                ForEach(urgentCase){ i in
                                    ForEach(i.caseDetail) { mycase in
                                    NavigationLink(destination: CaseView(mycase: mycase)) {
                                                    Box(mycase2: mycase)
                                                        }
                                                    }
                                                }
                          
                          
                  }
                        .padding(10)
                        
                    }
            
                }
                

//
            }
            

                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                
    }
        
}
         
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        .environment(\.sizeCategory, .extraSmall)
        .preferredColorScheme(.light)
.previewInterfaceOrientation(.portrait)
    }
}

//New swift File for the View
struct TopPageView: View {
    let images:[String] = ["slide1" , "slide2" , "slide3"]
    var body: some View{
        
        TabView{
        
            ForEach(images, id: \.self) { image in
                
               Image(image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                   
            }
            

        }
       
        
        .frame(width:UIScreen.main.bounds.width, height: 446)/// check it right
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

