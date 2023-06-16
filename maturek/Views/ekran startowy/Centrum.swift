//
//  listOfSubjectsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct Centrum: View {

    var body: some View {
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("backgroundColor"))
            ScrollView {
                VStack {
                    reusableTitle(BigTitle: "Centrum", Title: "Newsy")
                    Spacer()
                    
                }
            }
        }
    }
}
struct Centrum_Previews: PreviewProvider {
    static var previews: some View {
        Centrum()
    }
}
