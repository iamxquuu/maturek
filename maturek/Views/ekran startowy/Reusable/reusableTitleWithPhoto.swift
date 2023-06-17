//
//  reusableTitleWithPhoto.swift
//  maturek
//
//  Created by Marcel Maciaszek on 16/06/2023.
//

import SwiftUI

struct reusableTitleWithPhoto: View {
    
    var BigTitle: String
    var Title: String
    var ImageTitle: String
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                
                HStack(alignment: .center) {
                    Text(BigTitle)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 55)
                        .padding(.bottom, 18)
                    Spacer()
                    Image(systemName: ImageTitle)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .padding(.top, 40)
                        .padding(.trailing, 26)
                    
                }
                
                Text(Title)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 4)
            }
            Spacer()
        }.padding(.leading, 26)
            
        
        
    }
}

struct reusableTitleWithPhoto_Previews: PreviewProvider {
    static var previews: some View {
        reusableTitleWithPhoto(BigTitle: "Centrum", Title: "hello2", ImageTitle: "person.crop.circle")
    }
}
