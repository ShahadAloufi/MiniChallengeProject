//
//  Box.swift
//  MiniChallenge2
//
//  Created by Reem on 20/06/1443 AH.
//
import SwiftUI
// creating shape view which can give shape
struct CornerRadiusShape: Shape {
    var radius =  CGFloat.infinity
    var corners = UIRectCorner.allCorners
    
    func path (in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height : radius) )
        return Path (path.cgPath)
        
    }
}
// embeding shape in viewModifier
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

// Polymorophic functions with signature as cornerradius

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct Box: View {
    let mycase2: Case
    var body: some View {
        ZStack{
        HStack{
        VStack(spacing:0){
           
            Image("box")
                .resizable(resizingMode: .stretch)
                    .frame(width: 143.0, height: 60)
                    .cornerRadius(radius: 33.0, corners:[.topLeft, .topRight])
            
            HStack{
               
                ZStack{
             
            

            Rectangle()
                        
                .frame(width: 144, height: 130)
                .foregroundColor(Color(red: 0.134, green: 0.274, blue: 0.251))
                .cornerRadius(radius: 33.0, corners:[.bottomLeft, .bottomRight])
                    
                    
                    HStack(spacing: 0){
                      
                        Rectangle()
                        .frame(width: 40, height: 15)
                        .foregroundColor(Color(red: 0.30980392156862746, green: 0.5568627450980392, blue: 0.21176470588235294))
                        .cornerRadius(radius: 20.0, corners:[.topLeft, .bottomLeft])
                             
                        Rectangle()
                        .frame(width: 40, height: 15)
                    .foregroundColor(Color(red: 0.8666666666666667, green: 0.6274509803921569, blue: 0.3176470588235294))
                            Rectangle()
                    .frame(width: 40, height: 15)
                    .foregroundColor(Color(red: 0.9058823529411765, green: 0.16470588235294117, blue: 0.16470588235294117))
                        
                    .cornerRadius(radius: 20.0, corners:[.topRight, .bottomRight])
                    }
                    
                    
                    .padding(.bottom, 100.0)
                  
                    ZStack{
                        Image(systemName:"triangle.fill")
                            .padding([.leading, .bottom], 80.0)
                        
                    }
                   
                    VStack(alignment:.leading) {
                        
                        Text("Case: \(mycase2.caseNumber)")
                            .padding(.top, 13.0)
                            .frame(width:100, height:40 , alignment: .bottomLeading)
                            .font(.headline)
                            .foregroundColor(.white)
                            
                        Text(mycase2.brief)
                            .padding([.bottom, .trailing])
                            .frame(width:130, height:80 , alignment: .trailing)
                            .font(.caption)
                            .foregroundColor(.white)
                        }
                    .padding(2)
                    
                }
              //
                }
            }
        }
           

    }
        
}
}

struct Box_Previews: PreviewProvider {
    static var previews: some View {
        Box(mycase2: Case.mycase)
            .environment(\.sizeCategory, .extraSmall)
    }
}
