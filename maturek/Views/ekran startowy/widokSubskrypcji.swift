//
//  widokSubskrypcji.swift
//  maturek
//
//  Created by Marcel Maciaszek on 16/06/2023.
//

import SwiftUI

struct widokSubskrypcji: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("backgroundColor"))
            ScrollView {
                VStack {
                    reusableWithBackButton(BigTitle: "Subskrypcja", Title: "Oferta")
                    Spacer()
                    
                }
            }
        }
    }
}

struct widokSubskrypcji_Previews: PreviewProvider {
    static var previews: some View {
        widokSubskrypcji()
    }
}
