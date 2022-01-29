//
//  BeneficiaryView.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

struct BeneficiaryView: View {
    let mycase1 = Bundle.main.decodeJson([Cases].self, fileName: "cases.json")
    let col:[GridItem] = Array(repeating: .init(.flexible(), spacing: 8), count: 1)
    @State var SearchText = ""
    @State private var isEditing = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SearchBar(SearchText: $SearchText)
                    .padding(.bottom, 9)
                    LazyVGrid(columns: col, spacing: 17){
                        ForEach(mycase1.filter({"\($0)".contains(SearchText) || SearchText.isEmpty   })){ i in
                            ForEach(i.caseDetail) { mycase in
                                NavigationLink(destination: CaseView(mycase: mycase)) {
                                    CaseCol(mycase: mycase)
                                }
                            }
                        }
                       
                        
                    }
                   
                }
                .padding()
                
            }
            .navigationBarTitle("Beneficiary")
            .navigationBarTitleDisplayMode(.inline) 
        }
    }
    
}

struct BeneficiaryView_Previews: PreviewProvider {
    static var previews: some View {
        BeneficiaryView()
            .preferredColorScheme(.light)
            .environment(\.sizeCategory, .extraSmall)
    }
}
