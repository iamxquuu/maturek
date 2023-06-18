//
//  secondSubtitle.swift
//  maturek
//
//  Created by Marcel Maciaszek on 18/06/2023.
//

import SwiftUI

struct secondSubtitle: View {
    
    var title: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 4)
                    .padding(.top, 10)
            }
            Spacer()
        }.padding(.leading, 26)
            
        
    }
}

struct secondSubtitle_Previews: PreviewProvider {
    static var previews: some View {
        secondSubtitle(title: "hell")
    }
}
