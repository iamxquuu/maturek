//
//  reusableRectangle.swift
//  maturek
//
//  Created by Marcel Maciaszek on 18/06/2023.
//

import SwiftUI

struct reusableRectangle: View {
    
    var cornerRadius: Int
    var height: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
            .padding(.horizontal)
            .frame(height: CGFloat(height))
            
    }
}

struct reusableRectangle_Previews: PreviewProvider {
    static var previews: some View {
        reusableRectangle(cornerRadius: 15, height: 60)
    }
}
