//
//  accountStatsView.swift
//  maturek
//
//  Created by Marcel Maciaszek on 21/04/2023.
//

import SwiftUI

struct Biblioteka: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("backgroundColor"))
            ScrollView {
                VStack {
                    reusableTitle(BigTitle: "Biblioteka", Title: "Subskrypcja")
                    Spacer()
                    
                    }
                }
            }
        }
    }


struct Biblioteka_Previews: PreviewProvider {
    static var previews: some View {
        Biblioteka()
    }
}
