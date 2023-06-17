//
//  reusableWithBackButton.swift
//  maturek
//
//  Created by Marcel Maciaszek on 16/06/2023.
//

import SwiftUI

struct reusableWithBackButton: View {
    var BigTitle: String
    var Title: String
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                
                Text(BigTitle)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 22)
                    .padding(.bottom, 18)
                Text(Title)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 4)
            }
            Spacer()
        }.padding(.leading, 26)
    }
}

struct reusableWithBackButton_Previews: PreviewProvider {
    static var previews: some View {
        reusableWithBackButton(BigTitle: "Profil", Title: "Dane")
    }
}
